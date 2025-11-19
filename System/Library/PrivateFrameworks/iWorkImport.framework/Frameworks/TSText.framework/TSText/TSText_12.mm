uint64_t *TSWP::UndoTransactionWrapperArchive::default_instance(TSWP::UndoTransactionWrapperArchive *this)
{
  if (atomic_load_explicit(scc_info_UndoTransactionWrapperArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransactionWrapperArchive_default_instance_;
}

uint64_t *TSWP::UndoTransactionWrapperArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::UndoTransaction::Clear(this[3]);
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

google::protobuf::internal *TSWP::UndoTransactionWrapperArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F53144(a3, v10, v5);
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

unsigned __int8 *TSWP::UndoTransactionWrapperArchive::_InternalSerialize(TSWP::UndoTransactionWrapperArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::UndoTransaction::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransactionWrapperArchive::ByteSizeLong(TSWP::UndoTransaction **this)
{
  if (this[2])
  {
    v3 = TSWP::UndoTransaction::ByteSizeLong(this[3]);
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

uint64_t TSWP::UndoTransactionWrapperArchive::MergeFrom(TSWP::UndoTransactionWrapperArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransactionWrapperArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransactionWrapperArchive::MergeFrom(uint64_t this, const TSWP::UndoTransactionWrapperArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWP::_UndoTransaction_default_instance_;
    }

    return TSWP::UndoTransaction::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWP::UndoTransactionWrapperArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransactionWrapperArchive::Clear(this);

    return TSWP::UndoTransactionWrapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransactionWrapperArchive::CopyFrom(uint64_t *this, const TSWP::UndoTransactionWrapperArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransactionWrapperArchive::Clear(this);

    return TSWP::UndoTransactionWrapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransactionWrapperArchive::InternalSwap(TSWP::UndoTransactionWrapperArchive *this, TSWP::UndoTransactionWrapperArchive *a2)
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

TSD::ShapeArchive *TSWP::ShapeInfoArchive::clear_super(TSWP::ShapeInfoArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::ShapeArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::ShapeInfoArchive::clear_deprecated_storage(TSWP::ShapeInfoArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::ShapeInfoArchive::clear_text_flow(TSWP::ShapeInfoArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSWP::ShapeInfoArchive::clear_owned_storage(TSWP::ShapeInfoArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWP::ShapeInfoArchive *TSWP::ShapeInfoArchive::ShapeInfoArchive(TSWP::ShapeInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602360;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 28) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288602360;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 28) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::ShapeInfoArchive *TSWP::ShapeInfoArchive::ShapeInfoArchive(TSWP::ShapeInfoArchive *this, const TSWP::ShapeInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288602360;
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
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 28) = *(a2 + 28);
  return this;
}

void TSWP::ShapeInfoArchive::~ShapeInfoArchive(TSWP::ShapeInfoArchive *this)
{
  sub_276E83FC0(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::ShapeInfoArchive::~ShapeInfoArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276E83FC0(uint64_t *result)
{
  if (result != &TSWP::_ShapeInfoArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277CA2630]();
      MEMORY[0x277CA3D00](v2, 0x10A1C405ED7AD85);
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA3D00]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWP::ShapeInfoArchive::default_instance(TSWP::ShapeInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ShapeInfoArchive_default_instance_;
}

uint64_t *TSWP::ShapeInfoArchive::Clear(uint64_t *this)
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
    this = TSP::Reference::Clear(*(v1 + 32));
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

  this = TSD::ShapeArchive::Clear(this[3]);
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
  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Reference::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::ShapeInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v36) & 1) == 0)
  {
    while (1)
    {
      v7 = (v36 + 1);
      v8 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v9 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v31;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
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

              v20 = MEMORY[0x277CA3130](v19);
              LODWORD(v18) = v20;
              *(a1 + 24) = v20;
              v7 = v36;
            }

            v21 = sub_276F53214(a3, v18, v7);
            goto LABEL_57;
          }
        }

        else if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v12 = *(a1 + 32);
            if (!v12)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = MEMORY[0x277CA3250](v24);
              LODWORD(v12) = v25;
              *(a1 + 32) = v25;
              goto LABEL_43;
            }

            goto LABEL_44;
          }
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

            v14 = MEMORY[0x277CA3250](v13);
            LODWORD(v12) = v14;
            *(a1 + 40) = v14;
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        goto LABEL_50;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 8u;
          v12 = *(a1 + 48);
          if (!v12)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = MEMORY[0x277CA3250](v22);
            LODWORD(v12) = v23;
            *(a1 + 48) = v23;
LABEL_43:
            v7 = v36;
          }

LABEL_44:
          v21 = sub_276F4F9E8(a3, v12, v7);
LABEL_57:
          v36 = v21;
          if (!v21)
          {
            goto LABEL_67;
          }

          goto LABEL_58;
        }

LABEL_50:
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

        v21 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_57;
      }

      if (v10 == 6)
      {
        if (v8 != 48)
        {
          goto LABEL_50;
        }

        v5 |= 0x10u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_49:
          v36 = v27;
          *(a1 + 56) = v26 != 0;
          goto LABEL_58;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v7, v26);
        v36 = v34;
        *(a1 + 56) = v35 != 0;
        if (!v34)
        {
LABEL_67:
          v36 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 7 || v8 != 56)
        {
          goto LABEL_50;
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
          v36 = v16;
          *(a1 + 57) = v15 != 0;
          goto LABEL_58;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v36 = v32;
        *(a1 + 57) = v33 != 0;
        if (!v32)
        {
          goto LABEL_67;
        }
      }

LABEL_58:
      if (sub_276EA4A1C(a3, &v36))
      {
        goto LABEL_2;
      }
    }

    v7 = (v36 + 2);
LABEL_6:
    v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

unsigned __int8 *TSWP::ShapeInfoArchive::_InternalSerialize(TSWP::ShapeInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSD::ShapeArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
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

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_28:
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
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 6);
  *a2 = 34;
  v25 = *(v24 + 5);
  if (v25 > 0x7F)
  {
    a2[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = a2 + 3;
      do
      {
        *(v26 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v26;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v26 - 1) = v28;
    }

    else
    {
      a2[2] = v27;
      v26 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v25;
    v26 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 56);
  *a2 = 48;
  a2[1] = v30;
  a2 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_51:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 57);
    *a2 = 56;
    a2[1] = v31;
    a2 += 2;
  }

LABEL_54:
  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ShapeInfoArchive::ByteSizeLong(TSWP::ShapeInfoArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::ShapeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x3E) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v7 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
LABEL_9:
          v3 += ((v2 >> 4) & 2) + ((v2 >> 3) & 2);
          goto LABEL_10;
        }

LABEL_8:
        v5 = TSP::Reference::ByteSizeLong(*(this + 6));
        v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_9;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v8 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
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

uint64_t TSWP::ShapeInfoArchive::MergeFrom(TSWP::ShapeInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ShapeInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ShapeInfoArchive::MergeFrom(uint64_t this, const TSWP::ShapeInfoArchive *a2)
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
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277CA3130](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80490];
      }

      this = TSD::ShapeArchive::MergeFrom(v6, v8);
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
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_37;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

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

    this = TSP::Reference::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277CA3250](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v9;
    }

    this = TSP::Reference::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
LABEL_19:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_18:
      *(v3 + 57) = *(a2 + 57);
      goto LABEL_19;
    }

LABEL_45:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return this;
}

uint64_t *TSWP::ShapeInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ShapeInfoArchive::Clear(this);

    return TSWP::ShapeInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ShapeInfoArchive::CopyFrom(uint64_t *this, const TSWP::ShapeInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ShapeInfoArchive::Clear(this);

    return TSWP::ShapeInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ShapeInfoArchive::IsInitialized(TSWP::ShapeInfoArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::ShapeArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 5));
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

    result = TSP::Reference::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWP::ShapeInfoArchive::InternalSwap(TSWP::ShapeInfoArchive *this, TSWP::ShapeInfoArchive *a2)
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
  LOWORD(v7) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v7;
  return result;
}

TSP::Reference *TSWP::CommentInfoArchive::clear_comment_storage(TSWP::CommentInfoArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::CommentInfoArchive *TSWP::CommentInfoArchive::CommentInfoArchive(TSWP::CommentInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602410;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CommentInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_288602410;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CommentInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSWP::CommentInfoArchive *TSWP::CommentInfoArchive::CommentInfoArchive(TSWP::CommentInfoArchive *this, const TSWP::CommentInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288602410;
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

void TSWP::CommentInfoArchive::~CommentInfoArchive(TSWP::CommentInfoArchive *this)
{
  if (this != &TSWP::_CommentInfoArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::ShapeInfoArchive::~ShapeInfoArchive(v2);
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
  TSWP::CommentInfoArchive::~CommentInfoArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::CommentInfoArchive::default_instance(TSWP::CommentInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_CommentInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_CommentInfoArchive_default_instance_;
}

uint64_t *TSWP::CommentInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSWP::ShapeInfoArchive::Clear(this[3]);
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

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::CommentInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v13 = MEMORY[0x277CA3250](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_276F4F9E8(a3, v11, v5);
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeInfoArchive>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_276F532E4(a3, v14, v5);
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

unsigned __int8 *TSWP::CommentInfoArchive::_InternalSerialize(TSWP::CommentInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::ShapeInfoArchive::_InternalSerialize(v6, v8, a3);
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

uint64_t TSWP::CommentInfoArchive::ByteSizeLong(TSWP::CommentInfoArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSWP::ShapeInfoArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::CommentInfoArchive::MergeFrom(TSWP::CommentInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::CommentInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::CommentInfoArchive::MergeFrom(uint64_t this, const TSWP::CommentInfoArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeInfoArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_ShapeInfoArchive_default_instance_;
      }

      this = TSWP::ShapeInfoArchive::MergeFrom(v6, v8);
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

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSWP::CommentInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CommentInfoArchive::Clear(this);

    return TSWP::CommentInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::CommentInfoArchive::CopyFrom(uint64_t *this, const TSWP::CommentInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CommentInfoArchive::Clear(this);

    return TSWP::CommentInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::CommentInfoArchive::IsInitialized(TSWP::CommentInfoArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSWP::ShapeInfoArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWP::CommentInfoArchive::InternalSwap(TSWP::CommentInfoArchive *this, TSWP::CommentInfoArchive *a2)
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

TSP::Reference *TSWP::TOCInfoArchive::clear_toc_settings(TSWP::TOCInfoArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSWP::TOCInfoArchive::clear_toc_entry_data(uint64_t this)
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

uint64_t TSWP::TOCInfoArchive::clear_page_number_ranges(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TSWP::TOCInfoArchive *TSWP::TOCInfoArchive::TOCInfoArchive(TSWP::TOCInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886024C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_TOCInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  return this;
}

void sub_276E859CC(_Unwind_Exception *a1)
{
  sub_276EA4C58(v2);
  sub_276EA5ECC(v1);
  _Unwind_Resume(a1);
}

TSWP::TOCInfoArchive *TSWP::TOCInfoArchive::TOCInfoArchive(TSWP::TOCInfoArchive *this, const TSWP::TOCInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886024C0;
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

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_276EA4D78(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_276EA4CDC(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v16 = *(a2 + 4);
  if (v16)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  *(this + 88) = *(a2 + 88);
  return this;
}

void sub_276E85BBC(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v3, 0x1081C407D3F2757);
  sub_276EA4C58(v2);
  sub_276EA5ECC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::TOCInfoArchive::~TOCInfoArchive(TSWP::TOCInfoArchive *this)
{
  if (this != &TSWP::_TOCInfoArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSWP::ShapeInfoArchive::~ShapeInfoArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 10);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
  sub_276EA4C58(this + 6);
  sub_276EA5ECC(this + 3);
}

{
  TSWP::TOCInfoArchive::~TOCInfoArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TOCInfoArchive::default_instance(TSWP::TOCInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCInfoArchive_default_instance_;
}

uint64_t *TSWP::TOCInfoArchive::Clear(uint64_t *this)
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
      this = TSP::Range::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      this = TSWP::ShapeInfoArchive::Clear(*(v1 + 72));
    }

    if ((v8 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 80));
    }
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 80) = 0;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_276EA4D28(v9);
  }

  return this;
}

google::protobuf::internal *TSWP::TOCInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_74;
      }

      v7 = TagFallback;
      v8 = v41;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_59;
          }

          *(a1 + 16) |= 1u;
          v37 = *(a1 + 72);
          if (!v37)
          {
            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeInfoArchive>(v38);
            *(a1 + 72) = v37;
            v7 = v44;
          }

          v18 = sub_276F532E4(a3, v37, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_59;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 80);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277CA3250](v16);
            LODWORD(v15) = v17;
            *(a1 + 80) = v17;
            v7 = v44;
          }

          v18 = sub_276F4F9E8(a3, v15, v7);
        }

LABEL_66:
        v44 = v18;
        if (!v18)
        {
          goto LABEL_74;
        }

        goto LABEL_67;
      }

      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_59;
        }

        v19 = v7 - 1;
        while (2)
        {
          v20 = (v19 + 1);
          v44 = (v19 + 1);
          v21 = *(a1 + 40);
          if (!v21)
          {
LABEL_30:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v21 = *(a1 + 40);
            v22 = *v21;
            goto LABEL_31;
          }

          v27 = *(a1 + 32);
          v22 = *v21;
          if (v27 >= *v21)
          {
            if (v22 == *(a1 + 36))
            {
              goto LABEL_30;
            }

LABEL_31:
            *v21 = v22 + 1;
            v23 = MEMORY[0x277CA3250](*(a1 + 24));
            LODWORD(v24) = v23;
            v25 = *(a1 + 32);
            v26 = *(a1 + 40) + 8 * v25;
            *(a1 + 32) = v25 + 1;
            *(v26 + 8) = v23;
            v20 = v44;
          }

          else
          {
            *(a1 + 32) = v27 + 1;
            v24 = *&v21[2 * v27 + 2];
          }

          v19 = sub_276F4F9E8(a3, v24, v20);
          v44 = v19;
          if (!v19)
          {
            goto LABEL_74;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_67;
          }

          continue;
        }
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          v28 = v7 - 1;
          while (1)
          {
            v29 = (v28 + 1);
            v44 = (v28 + 1);
            v30 = *(a1 + 64);
            if (!v30)
            {
              goto LABEL_43;
            }

            v36 = *(a1 + 56);
            v31 = *v30;
            if (v36 < *v30)
            {
              *(a1 + 56) = v36 + 1;
              v33 = *&v30[2 * v36 + 2];
              goto LABEL_47;
            }

            if (v31 == *(a1 + 60))
            {
LABEL_43:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v30 = *(a1 + 64);
              v31 = *v30;
            }

            *v30 = v31 + 1;
            v32 = MEMORY[0x277CA3230](*(a1 + 48));
            LODWORD(v33) = v32;
            v34 = *(a1 + 56);
            v35 = *(a1 + 64) + 8 * v34;
            *(a1 + 56) = v34 + 1;
            *(v35 + 8) = v32;
            v29 = v44;
LABEL_47:
            v28 = sub_276F4F918(a3, v33, v29);
            v44 = v28;
            if (!v28)
            {
              goto LABEL_74;
            }

            if (*a3 <= v28 || *v28 != 34)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_59:
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

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_66;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_59;
      }

      v5 |= 4u;
      v12 = (v7 + 1);
      v11 = *v7;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v13 = *v12;
      v11 = (v13 << 7) + v11 - 128;
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_15:
        v44 = v12;
        *(a1 + 88) = v11 != 0;
        goto LABEL_67;
      }

      v42 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v44 = v42;
      *(a1 + 88) = v43 != 0;
      if (!v42)
      {
LABEL_74:
        v44 = 0;
        goto LABEL_2;
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

unsigned __int8 *TSWP::TOCInfoArchive::_InternalSerialize(TSWP::TOCInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 9);
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

    a2 = TSWP::ShapeInfoArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 10);
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

      a2 = TSP::Reference::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 14);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v28 = *(*(this + 8) + 8 * j + 8);
      *a2 = 34;
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

      a2 = TSP::Range::_InternalSerialize(v28, v30, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v34 = *(this + 88);
    *a2 = 40;
    a2[1] = v34;
    a2 += 2;
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCInfoArchive::ByteSizeLong(TSWP::ShapeInfoArchive **this)
{
  if (this[2])
  {
    v3 = TSWP::ShapeInfoArchive::ByteSizeLong(this[9]);
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
      v17 = TSP::Range::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 4);
  if ((v18 & 6) != 0)
  {
    if ((v18 & 2) != 0)
    {
      v19 = TSP::Reference::ByteSizeLong(this[10]);
      v12 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v12 += (v18 >> 1) & 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TSWP::TOCInfoArchive::MergeFrom(TSWP::TOCInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCInfoArchive::MergeFrom(uint64_t this, const TSWP::TOCInfoArchive *a2)
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

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_276EA4D78(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 7) != 0)
  {
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeInfoArchive>(v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 9))
      {
        v18 = *(a2 + 9);
      }

      else
      {
        v18 = &TSWP::_ShapeInfoArchive_default_instance_;
      }

      this = TSWP::ShapeInfoArchive::MergeFrom(v16, v18);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
LABEL_14:
          *(v3 + 16) |= v15;
          return this;
        }

LABEL_13:
        *(v3 + 88) = *(a2 + 88);
        goto LABEL_14;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 16) |= 2u;
    v19 = *(v3 + 80);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277CA3250](v20);
      *(v3 + 80) = v19;
    }

    if (*(a2 + 10))
    {
      v21 = *(a2 + 10);
    }

    else
    {
      v21 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v19, v21);
    if ((v15 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}

uint64_t *TSWP::TOCInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCInfoArchive::Clear(this);

    return TSWP::TOCInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCInfoArchive::CopyFrom(uint64_t *this, const TSWP::TOCInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCInfoArchive::Clear(this);

    return TSWP::TOCInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TOCInfoArchive::IsInitialized(TSWP::TOCInfoArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Range::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 4);
  if (v9)
  {
    result = TSWP::ShapeInfoArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 10));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::TOCInfoArchive::InternalSwap(TSWP::TOCInfoArchive *this, TSWP::TOCInfoArchive *a2)
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
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  v10 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  LOBYTE(v9) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v9;
  return result;
}

TSP::Range *TSWP::TOCLayoutHintArchive::clear_charrange(TSWP::TOCLayoutHintArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Range::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::TOCLayoutHintArchive *TSWP::TOCLayoutHintArchive::TOCLayoutHintArchive(TSWP::TOCLayoutHintArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602570;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCLayoutHintArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288602570;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCLayoutHintArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWP::TOCLayoutHintArchive *TSWP::TOCLayoutHintArchive::TOCLayoutHintArchive(TSWP::TOCLayoutHintArchive *this, const TSWP::TOCLayoutHintArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288602570;
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

void TSWP::TOCLayoutHintArchive::~TOCLayoutHintArchive(TSWP::TOCLayoutHintArchive *this)
{
  if (this != &TSWP::_TOCLayoutHintArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Range::~Range(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TOCLayoutHintArchive::~TOCLayoutHintArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::TOCLayoutHintArchive::default_instance(TSWP::TOCLayoutHintArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCLayoutHintArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCLayoutHintArchive_default_instance_;
}

uint64_t *TSWP::TOCLayoutHintArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Range::Clear(this[3]);
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

google::protobuf::internal *TSWP::TOCLayoutHintArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v12 = MEMORY[0x277CA3230](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_276F4F918(a3, v10, v5);
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

unsigned __int8 *TSWP::TOCLayoutHintArchive::_InternalSerialize(TSWP::TOCLayoutHintArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Range::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCLayoutHintArchive::ByteSizeLong(TSP::Range **this)
{
  if (this[2])
  {
    v3 = TSP::Range::ByteSizeLong(this[3]);
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

uint64_t TSWP::TOCLayoutHintArchive::MergeFrom(TSWP::TOCLayoutHintArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCLayoutHintArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCLayoutHintArchive::MergeFrom(uint64_t this, const TSWP::TOCLayoutHintArchive *a2)
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

      v6 = MEMORY[0x277CA3230](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D809F8];
    }

    return TSP::Range::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWP::TOCLayoutHintArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCLayoutHintArchive::Clear(this);

    return TSWP::TOCLayoutHintArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCLayoutHintArchive::CopyFrom(uint64_t *this, const TSWP::TOCLayoutHintArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCLayoutHintArchive::Clear(this);

    return TSWP::TOCLayoutHintArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TOCLayoutHintArchive::IsInitialized(TSP::Range **this)
{
  if (this[2])
  {
    return TSP::Range::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSWP::TOCLayoutHintArchive::InternalSwap(TSWP::TOCLayoutHintArchive *this, TSWP::TOCLayoutHintArchive *a2)
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

uint64_t TSWP::EquationInfoArchive::EquationInfoArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288602620;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288602620;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSWP::EquationInfoArchive *TSWP::EquationInfoArchive::EquationInfoArchive(TSWP::EquationInfoArchive *this, const TSWP::EquationInfoArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288602620;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::EquationInfoArchive::~EquationInfoArchive(TSWP::EquationInfoArchive *this)
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

uint64_t *TSWP::EquationInfoArchive::default_instance(TSWP::EquationInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_EquationInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_EquationInfoArchive_default_instance_;
}

uint64_t *TSWP::EquationInfoArchive::Clear(TSWP::EquationInfoArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

uint64_t TSWP::EquationInfoArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
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

uint64_t TSWP::EquationInfoArchive::ByteSizeLong(TSWP::EquationInfoArchive *this)
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

void *TSWP::EquationInfoArchive::MergeFrom(TSWP::EquationInfoArchive *this, const Message *lpsrc)
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

uint64_t TSWP::EquationInfoArchive::MergeFrom(uint64_t this, const TSWP::EquationInfoArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_276EA4CDC((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSWP::EquationInfoArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
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

    return TSWP::EquationInfoArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSWP::EquationInfoArchive::CopyFrom(uint64_t *this, const TSWP::EquationInfoArchive *a2)
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

TSWP::TextualAttachmentArchive *TSWP::TextualAttachmentArchive::TextualAttachmentArchive(TSWP::TextualAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886026D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TextualAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 8) = 0;
  return this;
}

TSWP::TextualAttachmentArchive *TSWP::TextualAttachmentArchive::TextualAttachmentArchive(TSWP::TextualAttachmentArchive *this, const TSWP::TextualAttachmentArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2886026D0;
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
  }

  *(this + 8) = *(a2 + 8);
  return this;
}

void TSWP::TextualAttachmentArchive::~TextualAttachmentArchive(TSWP::TextualAttachmentArchive *this)
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

  sub_276E4E808(this + 1);
}

{
  TSWP::TextualAttachmentArchive::~TextualAttachmentArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TextualAttachmentArchive::default_instance(TSWP::TextualAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_TextualAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TextualAttachmentArchive_default_instance_;
}

uint64_t *TSWP::TextualAttachmentArchive::Clear(TSWP::TextualAttachmentArchive *this)
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
  *(result + 6) = 0;
  *(result + 2) = 0;
  if (v3)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::TextualAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_276EA4A1C(a3, &v17) & 1) == 0)
  {
    v5 = (v17 + 1);
    v6 = *v17;
    if (*v17 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
        v17 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v15;
        goto LABEL_7;
      }

      v5 = (v17 + 2);
    }

    v17 = v5;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 16)
      {
        goto LABEL_12;
      }

      v12 = (v5 + 1);
      v11 = *v5;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v13 = *v12;
      v11 = (v13 << 7) + v11 - 128;
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v5 + 2);
LABEL_23:
        v17 = v12;
        goto LABEL_24;
      }

      v17 = google::protobuf::internal::VarintParseSlow64(v5, v11);
      if (!v17)
      {
        return 0;
      }

LABEL_24:
      if (v11 > 2)
      {
        sub_276F53EDC();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v11;
      }
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
          return v17;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_27;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_27:
      v17 = v10;
      if (!v10)
      {
        return 0;
      }
    }
  }

  return v17;
}

unsigned __int8 *TSWP::TextualAttachmentArchive::_InternalSerialize(TSWP::TextualAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276E5154C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 8);
    *v4 = 16;
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
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
    }
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TextualAttachmentArchive::ByteSizeLong(TSWP::TextualAttachmentArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
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
    v6 = *(this + 8);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_13:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSWP::TextualAttachmentArchive::MergeFrom(TSWP::TextualAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TextualAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TextualAttachmentArchive::MergeFrom(uint64_t this, const TSWP::TextualAttachmentArchive *a2)
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
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSWP::TextualAttachmentArchive *TSWP::TextualAttachmentArchive::CopyFrom(TSWP::TextualAttachmentArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextualAttachmentArchive::Clear(this);

    return TSWP::TextualAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::TextualAttachmentArchive *TSWP::TextualAttachmentArchive::CopyFrom(TSWP::TextualAttachmentArchive *this, const TSWP::TextualAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextualAttachmentArchive::Clear(this);

    return TSWP::TextualAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TextualAttachmentArchive::InternalSwap(TSWP::TextualAttachmentArchive *this, TSWP::TextualAttachmentArchive *a2)
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

TSWP::TSWPTOCPageNumberAttachmentArchive *TSWP::TSWPTOCPageNumberAttachmentArchive::TSWPTOCPageNumberAttachmentArchive(TSWP::TSWPTOCPageNumberAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602780;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TSWPTOCPageNumberAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  return this;
}

TSWP::TSWPTOCPageNumberAttachmentArchive *TSWP::TSWPTOCPageNumberAttachmentArchive::TSWPTOCPageNumberAttachmentArchive(TSWP::TSWPTOCPageNumberAttachmentArchive *this, const TSWP::TSWPTOCPageNumberAttachmentArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288602780;
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
  return this;
}

void TSWP::TSWPTOCPageNumberAttachmentArchive::~TSWPTOCPageNumberAttachmentArchive(TSWP::TSWPTOCPageNumberAttachmentArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  if (this != &TSWP::_TSWPTOCPageNumberAttachmentArchive_default_instance_)
  {
    v5 = *(this + 5);
    if (v5)
    {
      TSWP::TextualAttachmentArchive::~TextualAttachmentArchive(v5);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TSWPTOCPageNumberAttachmentArchive::~TSWPTOCPageNumberAttachmentArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TSWPTOCPageNumberAttachmentArchive::default_instance(TSWP::TSWPTOCPageNumberAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_TSWPTOCPageNumberAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TSWPTOCPageNumberAttachmentArchive_default_instance_;
}

uint64_t *TSWP::TSWPTOCPageNumberAttachmentArchive::Clear(uint64_t *this)
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
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
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

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    this = TSWP::TextualAttachmentArchive::Clear(this[5]);
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
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

google::protobuf::internal *TSWP::TSWPTOCPageNumberAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_276EA4A1C(a3, &v17) & 1) == 0)
  {
    v5 = (v17 + 1);
    v6 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v17 + 2);
LABEL_6:
      v17 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v15;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      goto LABEL_24;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
LABEL_24:
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_30;
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_30;
    }

    *(a1 + 16) |= 4u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextualAttachmentArchive>(v13);
      *(a1 + 40) = v12;
      v5 = v17;
    }

    v11 = sub_276F53470(a3, v12, v5);
LABEL_30:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *TSWP::TSWPTOCPageNumberAttachmentArchive::_InternalSerialize(TSWP::TSWPTOCPageNumberAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 5);
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

    v4 = TSWP::TextualAttachmentArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_4:
    v4 = sub_276E5154C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TSWPTOCPageNumberAttachmentArchive::ByteSizeLong(TSWP::TSWPTOCPageNumberAttachmentArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_14;
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
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
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
    v10 = TSWP::TextualAttachmentArchive::ByteSizeLong(*(this + 5));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::TSWPTOCPageNumberAttachmentArchive::MergeFrom(TSWP::TSWPTOCPageNumberAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TSWPTOCPageNumberAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TSWPTOCPageNumberAttachmentArchive::MergeFrom(uint64_t this, const TSWP::TSWPTOCPageNumberAttachmentArchive *a2)
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

LABEL_10:
        *(v3 + 16) |= 4u;
        v6 = *(v3 + 40);
        if (!v6)
        {
          v7 = *(v3 + 8);
          if (v7)
          {
            v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
          }

          v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextualAttachmentArchive>(v7);
          *(v3 + 40) = v6;
        }

        if (*(a2 + 5))
        {
          v8 = *(a2 + 5);
        }

        else
        {
          v8 = &TSWP::_TextualAttachmentArchive_default_instance_;
        }

        return TSWP::TextualAttachmentArchive::MergeFrom(v6, v8);
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
      return this;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSWP::TSWPTOCPageNumberAttachmentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TSWPTOCPageNumberAttachmentArchive::Clear(this);

    return TSWP::TSWPTOCPageNumberAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TSWPTOCPageNumberAttachmentArchive::CopyFrom(uint64_t *this, const TSWP::TSWPTOCPageNumberAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TSWPTOCPageNumberAttachmentArchive::Clear(this);

    return TSWP::TSWPTOCPageNumberAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TSWPTOCPageNumberAttachmentArchive::InternalSwap(TSWP::TSWPTOCPageNumberAttachmentArchive *this, TSWP::TSWPTOCPageNumberAttachmentArchive *a2)
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
  return result;
}

uint64_t TSWP::UIGraphicalAttachment::UIGraphicalAttachment(uint64_t result, uint64_t a2)
{
  *result = &unk_288602830;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288602830;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSWP::UIGraphicalAttachment *TSWP::UIGraphicalAttachment::UIGraphicalAttachment(TSWP::UIGraphicalAttachment *this, const TSWP::UIGraphicalAttachment *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288602830;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::UIGraphicalAttachment::~UIGraphicalAttachment(TSWP::UIGraphicalAttachment *this)
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

uint64_t *TSWP::UIGraphicalAttachment::default_instance(TSWP::UIGraphicalAttachment *this)
{
  if (atomic_load_explicit(scc_info_UIGraphicalAttachment_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UIGraphicalAttachment_default_instance_;
}

uint64_t *TSWP::UIGraphicalAttachment::Clear(TSWP::UIGraphicalAttachment *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

uint64_t TSWP::UIGraphicalAttachment::_InternalSerialize(uint64_t a1, uint64_t a2)
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

uint64_t TSWP::UIGraphicalAttachment::ByteSizeLong(TSWP::UIGraphicalAttachment *this)
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

void *TSWP::UIGraphicalAttachment::MergeFrom(TSWP::UIGraphicalAttachment *this, const Message *lpsrc)
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

uint64_t TSWP::UIGraphicalAttachment::MergeFrom(uint64_t this, const TSWP::UIGraphicalAttachment *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_276EA4CDC((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSWP::UIGraphicalAttachment::CopyFrom(uint64_t *this, const Message *lpsrc)
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

    return TSWP::UIGraphicalAttachment::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSWP::UIGraphicalAttachment::CopyFrom(uint64_t *this, const TSWP::UIGraphicalAttachment *a2)
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

TSP::Reference *TSWP::DrawableAttachmentArchive::clear_drawable(TSWP::DrawableAttachmentArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::DrawableAttachmentArchive *TSWP::DrawableAttachmentArchive::DrawableAttachmentArchive(TSWP::DrawableAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886028E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2886028E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::DrawableAttachmentArchive *TSWP::DrawableAttachmentArchive::DrawableAttachmentArchive(TSWP::DrawableAttachmentArchive *this, const TSWP::DrawableAttachmentArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886028E0;
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
  *(this + 2) = *(a2 + 2);
  return this;
}

void TSWP::DrawableAttachmentArchive::~DrawableAttachmentArchive(TSWP::DrawableAttachmentArchive *this)
{
  if (this != &TSWP::_DrawableAttachmentArchive_default_instance_)
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
  TSWP::DrawableAttachmentArchive::~DrawableAttachmentArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::DrawableAttachmentArchive::default_instance(TSWP::DrawableAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_DrawableAttachmentArchive_default_instance_;
}

uint64_t *TSWP::DrawableAttachmentArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::Reference::Clear(this[3]);
  }

  if ((v2 & 0x1E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

google::protobuf::internal *TSWP::DrawableAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v32) & 1) == 0)
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
        goto LABEL_54;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
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

              v23 = MEMORY[0x277CA3250](v22);
              LODWORD(v21) = v23;
              *(a1 + 24) = v23;
              v7 = v32;
            }

            v24 = sub_276F4F9E8(a3, v21, v7);
            goto LABEL_44;
          }

LABEL_37:
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
            sub_276EA4A94((a1 + 8));
          }

          v24 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
          v32 = v24;
          if (!v24)
          {
            goto LABEL_54;
          }

          goto LABEL_45;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_37;
        }

        v5 |= 2u;
        v14 = (v7 + 1);
        LODWORD(v15) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        v16 = *v14;
        v15 = (v15 + (v16 << 7) - 128);
        if ((v16 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_22:
          v32 = v14;
          *(a1 + 32) = v15;
          goto LABEL_45;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v32 = v30;
        *(a1 + 32) = v31;
        if (!v30)
        {
LABEL_54:
          v32 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v17 = *v7;
            v11 = (v7 + 4);
            v5 |= 4u;
            *(a1 + 36) = v17;
            goto LABEL_25;
          }

          goto LABEL_37;
        }

        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 45)
          {
            v12 = *v7;
            v11 = (v7 + 4);
            v5 |= 0x10u;
            *(a1 + 44) = v12;
LABEL_25:
            v32 = v11;
            goto LABEL_45;
          }

          goto LABEL_37;
        }

        if (v8 != 32)
        {
          goto LABEL_37;
        }

        v5 |= 8u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_30:
          v32 = v18;
          *(a1 + 40) = v19;
          goto LABEL_45;
        }

        v28 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v32 = v28;
        *(a1 + 40) = v29;
        if (!v28)
        {
          goto LABEL_54;
        }
      }

LABEL_45:
      if (sub_276EA4A1C(a3, &v32))
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

unsigned __int8 *TSWP::DrawableAttachmentArchive::_InternalSerialize(TSWP::DrawableAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 8);
    *a2 = 16;
    if (v15 > 0x7F)
    {
      a2[1] = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++a2;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(a2 - 1) = v17;
        if ((v5 & 4) != 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        a2[2] = v16;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      a2[1] = v15;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

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

  a2 = TSP::Reference::_InternalSerialize(v9, v11, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 9);
  *a2 = 29;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 10);
  *a2 = 32;
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
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 11);
  *a2 = 45;
  *(a2 + 1) = v6;
  a2 += 5;
LABEL_9:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::DrawableAttachmentArchive::ByteSizeLong(TSWP::DrawableAttachmentArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v4 = 0;
    goto LABEL_15;
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

  v5 = TSP::Reference::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += 5;
  }

  if ((v2 & 8) != 0)
  {
    v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 0x10) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

LABEL_15:
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

uint64_t TSWP::DrawableAttachmentArchive::MergeFrom(TSWP::DrawableAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::DrawableAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::DrawableAttachmentArchive::MergeFrom(uint64_t this, const TSWP::DrawableAttachmentArchive *a2)
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
          goto LABEL_7;
        }

        goto LABEL_21;
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

      goto LABEL_22;
    }

LABEL_21:
    *(v3 + 36) = *(a2 + 9);
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
      *(v3 + 44) = *(a2 + 11);
      goto LABEL_10;
    }

LABEL_22:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSWP::DrawableAttachmentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DrawableAttachmentArchive::Clear(this);

    return TSWP::DrawableAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::DrawableAttachmentArchive::CopyFrom(uint64_t *this, const TSWP::DrawableAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DrawableAttachmentArchive::Clear(this);

    return TSWP::DrawableAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::DrawableAttachmentArchive::IsInitialized(TSWP::DrawableAttachmentArchive *this)
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

__n128 TSWP::DrawableAttachmentArchive::InternalSwap(TSWP::DrawableAttachmentArchive *this, TSWP::DrawableAttachmentArchive *a2)
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

TSWP::TOCAttachmentArchive *TSWP::TOCAttachmentArchive::TOCAttachmentArchive(TSWP::TOCAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602990;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288602990;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWP::TOCAttachmentArchive *TSWP::TOCAttachmentArchive::TOCAttachmentArchive(TSWP::TOCAttachmentArchive *this, const TSWP::TOCAttachmentArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288602990;
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

void TSWP::TOCAttachmentArchive::~TOCAttachmentArchive(TSWP::TOCAttachmentArchive *this)
{
  if (this != &TSWP::_TOCAttachmentArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::DrawableAttachmentArchive::~DrawableAttachmentArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TOCAttachmentArchive::~TOCAttachmentArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::TOCAttachmentArchive::default_instance(TSWP::TOCAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCAttachmentArchive_default_instance_;
}

uint64_t *TSWP::TOCAttachmentArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::DrawableAttachmentArchive::Clear(this[3]);
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

google::protobuf::internal *TSWP::TOCAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DrawableAttachmentArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F535FC(a3, v10, v5);
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

unsigned __int8 *TSWP::TOCAttachmentArchive::_InternalSerialize(TSWP::TOCAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::DrawableAttachmentArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCAttachmentArchive::ByteSizeLong(TSWP::DrawableAttachmentArchive **this)
{
  if (this[2])
  {
    v3 = TSWP::DrawableAttachmentArchive::ByteSizeLong(this[3]);
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

uint64_t TSWP::TOCAttachmentArchive::MergeFrom(TSWP::TOCAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCAttachmentArchive::MergeFrom(uint64_t this, const TSWP::TOCAttachmentArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DrawableAttachmentArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWP::_DrawableAttachmentArchive_default_instance_;
    }

    return TSWP::DrawableAttachmentArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWP::TOCAttachmentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCAttachmentArchive::Clear(this);

    return TSWP::TOCAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCAttachmentArchive::CopyFrom(uint64_t *this, const TSWP::TOCAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCAttachmentArchive::Clear(this);

    return TSWP::TOCAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TOCAttachmentArchive::IsInitialized(TSWP::TOCAttachmentArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(v2 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWP::TOCAttachmentArchive::InternalSwap(TSWP::TOCAttachmentArchive *this, TSWP::TOCAttachmentArchive *a2)
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

TSP::Reference *TSWP::FootnoteReferenceAttachmentArchive::clear_contained_storage(TSWP::FootnoteReferenceAttachmentArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::FootnoteReferenceAttachmentArchive *TSWP::FootnoteReferenceAttachmentArchive::FootnoteReferenceAttachmentArchive(TSWP::FootnoteReferenceAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602A40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FootnoteReferenceAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSWP::FootnoteReferenceAttachmentArchive *TSWP::FootnoteReferenceAttachmentArchive::FootnoteReferenceAttachmentArchive(TSWP::FootnoteReferenceAttachmentArchive *this, const TSWP::FootnoteReferenceAttachmentArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288602A40;
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

void TSWP::FootnoteReferenceAttachmentArchive::~FootnoteReferenceAttachmentArchive(TSWP::FootnoteReferenceAttachmentArchive *this)
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

  if (this != &TSWP::_FootnoteReferenceAttachmentArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSWP::TextualAttachmentArchive::~TextualAttachmentArchive(v3);
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
  TSWP::FootnoteReferenceAttachmentArchive::~FootnoteReferenceAttachmentArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::FootnoteReferenceAttachmentArchive::default_instance(TSWP::FootnoteReferenceAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_FootnoteReferenceAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_FootnoteReferenceAttachmentArchive_default_instance_;
}

uint64_t *TSWP::FootnoteReferenceAttachmentArchive::Clear(uint64_t *this)
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
  this = TSWP::TextualAttachmentArchive::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSP::Reference::Clear(*(v1 + 40));
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

google::protobuf::internal *TSWP::FootnoteReferenceAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_276EA4A1C(a3, &v20) & 1) == 0)
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
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
    }

    else if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277CA3250](v13);
        LODWORD(v12) = v14;
        *(a1 + 40) = v14;
        v5 = v20;
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
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_33;
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

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextualAttachmentArchive>(v16);
        *(a1 + 32) = v15;
        v5 = v20;
      }

      v11 = sub_276F53470(a3, v15, v5);
    }

LABEL_33:
    v20 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TSWP::FootnoteReferenceAttachmentArchive::_InternalSerialize(TSWP::FootnoteReferenceAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSWP::TextualAttachmentArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
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
  if (v6)
  {
LABEL_4:
    v4 = sub_276E5154C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::FootnoteReferenceAttachmentArchive::ByteSizeLong(TSWP::FootnoteReferenceAttachmentArchive *this)
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
    v7 = TSWP::TextualAttachmentArchive::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = TSP::Reference::ByteSizeLong(*(this + 5));
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

uint64_t TSWP::FootnoteReferenceAttachmentArchive::MergeFrom(TSWP::FootnoteReferenceAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::FootnoteReferenceAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::FootnoteReferenceAttachmentArchive::MergeFrom(uint64_t this, const TSWP::FootnoteReferenceAttachmentArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextualAttachmentArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TSWP::_TextualAttachmentArchive_default_instance_;
    }

    this = TSWP::TextualAttachmentArchive::MergeFrom(v6, v8);
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

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSWP::FootnoteReferenceAttachmentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FootnoteReferenceAttachmentArchive::Clear(this);

    return TSWP::FootnoteReferenceAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::FootnoteReferenceAttachmentArchive::CopyFrom(uint64_t *this, const TSWP::FootnoteReferenceAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FootnoteReferenceAttachmentArchive::Clear(this);

    return TSWP::FootnoteReferenceAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::FootnoteReferenceAttachmentArchive::IsInitialized(TSWP::FootnoteReferenceAttachmentArchive *this)
{
  if ((*(this + 16) & 4) == 0)
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

__n128 TSWP::FootnoteReferenceAttachmentArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSWP::NumberAttachmentArchive *TSWP::NumberAttachmentArchive::NumberAttachmentArchive(TSWP::NumberAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602AF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_NumberAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 12) = 0;
  return this;
}

TSWP::NumberAttachmentArchive *TSWP::NumberAttachmentArchive::NumberAttachmentArchive(TSWP::NumberAttachmentArchive *this, const TSWP::NumberAttachmentArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288602AF0;
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
  *(this + 12) = *(a2 + 12);
  return this;
}

void TSWP::NumberAttachmentArchive::~NumberAttachmentArchive(TSWP::NumberAttachmentArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  if (this != &TSWP::_NumberAttachmentArchive_default_instance_)
  {
    v5 = *(this + 5);
    if (v5)
    {
      TSWP::TextualAttachmentArchive::~TextualAttachmentArchive(v5);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::NumberAttachmentArchive::~NumberAttachmentArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::NumberAttachmentArchive::default_instance(TSWP::NumberAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_NumberAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_NumberAttachmentArchive_default_instance_;
}

uint64_t *TSWP::NumberAttachmentArchive::Clear(uint64_t *this)
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
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
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

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    this = TSWP::TextualAttachmentArchive::Clear(this[5]);
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
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

google::protobuf::internal *TSWP::NumberAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_46;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_31;
          }

          *(a1 + 16) |= 1u;
        }

        else
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_31;
          }

          *(a1 + 16) |= 2u;
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v17 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_38;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
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

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextualAttachmentArchive>(v16);
            *(a1 + 40) = v15;
            v7 = v23;
          }

          v17 = sub_276F53470(a3, v15, v7);
          goto LABEL_38;
        }

LABEL_31:
        if (v8)
        {
          v18 = (v8 & 7) == 4;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_38:
        v23 = v17;
        if (!v17)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_31;
      }

      v5 |= 8u;
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
        v23 = v12;
        *(a1 + 48) = v13;
        goto LABEL_39;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v23 = v21;
      *(a1 + 48) = v22;
      if (!v21)
      {
LABEL_46:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_39:
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

unsigned __int8 *TSWP::NumberAttachmentArchive::_InternalSerialize(TSWP::NumberAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 12);
    *v4 = 16;
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v4;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v4 - 1) = v17;
        if (v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if (v6)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if (v6)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 5);
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

  v4 = TSWP::TextualAttachmentArchive::_InternalSerialize(v9, v11, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  v4 = sub_276E5154C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_5:
    v4 = sub_276E5154C(a3, 4, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::NumberAttachmentArchive::ByteSizeLong(TSWP::NumberAttachmentArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_15;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = TSWP::TextualAttachmentArchive::ByteSizeLong(*(this + 5));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::NumberAttachmentArchive::MergeFrom(TSWP::NumberAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::NumberAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::NumberAttachmentArchive::MergeFrom(uint64_t this, const TSWP::NumberAttachmentArchive *a2)
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

        goto LABEL_13;
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
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 48) = *(a2 + 12);
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 16) |= 4u;
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextualAttachmentArchive>(v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 5))
    {
      v8 = *(a2 + 5);
    }

    else
    {
      v8 = &TSWP::_TextualAttachmentArchive_default_instance_;
    }

    this = TSWP::TextualAttachmentArchive::MergeFrom(v6, v8);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSWP::NumberAttachmentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::NumberAttachmentArchive::Clear(this);

    return TSWP::NumberAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::NumberAttachmentArchive::CopyFrom(uint64_t *this, const TSWP::NumberAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::NumberAttachmentArchive::Clear(this);

    return TSWP::NumberAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::NumberAttachmentArchive::InternalSwap(TSWP::NumberAttachmentArchive *this, TSWP::NumberAttachmentArchive *a2)
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
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

TSWP::SmartFieldArchive *TSWP::SmartFieldArchive::SmartFieldArchive(TSWP::SmartFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602BA0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  return this;
}

{
  *this = &unk_288602BA0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  return this;
}

TSWP::SmartFieldArchive *TSWP::SmartFieldArchive::SmartFieldArchive(TSWP::SmartFieldArchive *this, const TSWP::SmartFieldArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288602BA0;
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
  }

  return this;
}

void TSWP::SmartFieldArchive::~SmartFieldArchive(TSWP::SmartFieldArchive *this)
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

  sub_276E4E808(this + 1);
}

{
  TSWP::SmartFieldArchive::~SmartFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::SmartFieldArchive::default_instance(TSWP::SmartFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_SmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_SmartFieldArchive_default_instance_;
}

uint64_t *TSWP::SmartFieldArchive::Clear(TSWP::SmartFieldArchive *this)
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
  *(result + 2) = 0;
  if (v3)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::SmartFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

    v6 = v10;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v9 = google::protobuf::internal::InlineGreedyStringParser();
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
        return TagFallback;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    TagFallback = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return TagFallback;
}

uint64_t TSWP::SmartFieldArchive::_InternalSerialize(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v3 = a2;
  if (*(a1 + 16))
  {
    v3 = sub_276E5154C(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v5 = *(a1 + 8);
  if ((v5 & 1) == 0)
  {
    return v3;
  }

  return MEMORY[0x2821EAC40]((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::SmartFieldArchive::ByteSizeLong(TSWP::SmartFieldArchive *this)
{
  if (*(this + 16))
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::SmartFieldArchive::MergeFrom(TSWP::SmartFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::SmartFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::SmartFieldArchive::MergeFrom(uint64_t this, const TSWP::SmartFieldArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;

    return google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

TSWP::SmartFieldArchive *TSWP::SmartFieldArchive::CopyFrom(TSWP::SmartFieldArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SmartFieldArchive::Clear(this);

    return TSWP::SmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::SmartFieldArchive *TSWP::SmartFieldArchive::CopyFrom(TSWP::SmartFieldArchive *this, const TSWP::SmartFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SmartFieldArchive::Clear(this);

    return TSWP::SmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::SmartFieldArchive::InternalSwap(TSWP::SmartFieldArchive *this, TSWP::SmartFieldArchive *a2)
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

TSWP::HyperlinkFieldArchive *TSWP::HyperlinkFieldArchive::HyperlinkFieldArchive(TSWP::HyperlinkFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602C50;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HyperlinkFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSWP::HyperlinkFieldArchive *TSWP::HyperlinkFieldArchive::HyperlinkFieldArchive(TSWP::HyperlinkFieldArchive *this, const TSWP::HyperlinkFieldArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288602C50;
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

void TSWP::HyperlinkFieldArchive::~HyperlinkFieldArchive(TSWP::HyperlinkFieldArchive *this)
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

  if (this != &TSWP::_HyperlinkFieldArchive_default_instance_)
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
  TSWP::HyperlinkFieldArchive::~HyperlinkFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::HyperlinkFieldArchive::default_instance(TSWP::HyperlinkFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_HyperlinkFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_HyperlinkFieldArchive_default_instance_;
}

uint64_t *TSWP::HyperlinkFieldArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSWP::HyperlinkFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSWP::HyperlinkFieldArchive::_InternalSerialize(TSWP::HyperlinkFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWP::HyperlinkFieldArchive::ByteSizeLong(TSWP::HyperlinkFieldArchive *this)
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

uint64_t TSWP::HyperlinkFieldArchive::MergeFrom(TSWP::HyperlinkFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::HyperlinkFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::HyperlinkFieldArchive::MergeFrom(uint64_t this, const TSWP::HyperlinkFieldArchive *a2)
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

uint64_t *TSWP::HyperlinkFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::HyperlinkFieldArchive::Clear(this);

    return TSWP::HyperlinkFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::HyperlinkFieldArchive::CopyFrom(uint64_t *this, const TSWP::HyperlinkFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::HyperlinkFieldArchive::Clear(this);

    return TSWP::HyperlinkFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::HyperlinkFieldArchive::InternalSwap(TSWP::HyperlinkFieldArchive *this, TSWP::HyperlinkFieldArchive *a2)
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

TSWP::PlaceholderSmartFieldArchive *TSWP::PlaceholderSmartFieldArchive::PlaceholderSmartFieldArchive(TSWP::PlaceholderSmartFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602D00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PlaceholderSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSWP::PlaceholderSmartFieldArchive *TSWP::PlaceholderSmartFieldArchive::PlaceholderSmartFieldArchive(TSWP::PlaceholderSmartFieldArchive *this, const TSWP::PlaceholderSmartFieldArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288602D00;
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
  *(this + 40) = *(a2 + 40);
  return this;
}

void TSWP::PlaceholderSmartFieldArchive::~PlaceholderSmartFieldArchive(TSWP::PlaceholderSmartFieldArchive *this)
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

  if (this != &TSWP::_PlaceholderSmartFieldArchive_default_instance_)
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
  TSWP::PlaceholderSmartFieldArchive::~PlaceholderSmartFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::PlaceholderSmartFieldArchive::default_instance(TSWP::PlaceholderSmartFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_PlaceholderSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
}

uint64_t *TSWP::PlaceholderSmartFieldArchive::Clear(uint64_t *this)
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
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWP::PlaceholderSmartFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v13 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_32:
        v23 = v13;
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      if (v10 != 2)
      {
        if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 2u;
          v17 = *(a1 + 32);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v18);
            *(a1 + 32) = v17;
            v7 = v23;
          }

          v13 = sub_276F536CC(a3, v17, v7);
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

        goto LABEL_32;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v15 = (v7 + 1);
      v14 = *v7;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_24:
        v23 = v15;
        *(a1 + 40) = v14 != 0;
        goto LABEL_33;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v14);
      v23 = v21;
      *(a1 + 40) = v22 != 0;
      if (!v21)
      {
LABEL_40:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_33:
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

unsigned __int8 *TSWP::PlaceholderSmartFieldArchive::_InternalSerialize(TSWP::PlaceholderSmartFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v10 = *(v9 + 20);
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

    v4 = TSWP::SmartFieldArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
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

  v15 = *(this + 40);
  *v4 = 16;
  v4[1] = v15;
  v4 += 2;
  if (v6)
  {
LABEL_4:
    v4 = sub_276E5154C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::PlaceholderSmartFieldArchive::ByteSizeLong(TSWP::PlaceholderSmartFieldArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v4 = 0;
    goto LABEL_11;
  }

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
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = TSWP::SmartFieldArchive::ByteSizeLong(*(this + 4));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  v4 = v3 + ((v2 >> 1) & 2);
LABEL_11:
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

uint64_t TSWP::PlaceholderSmartFieldArchive::MergeFrom(TSWP::PlaceholderSmartFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::PlaceholderSmartFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::PlaceholderSmartFieldArchive::MergeFrom(uint64_t this, const TSWP::PlaceholderSmartFieldArchive *a2)
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
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 40);
        goto LABEL_8;
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
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSWP::PlaceholderSmartFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::PlaceholderSmartFieldArchive::Clear(this);

    return TSWP::PlaceholderSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::PlaceholderSmartFieldArchive::CopyFrom(uint64_t *this, const TSWP::PlaceholderSmartFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::PlaceholderSmartFieldArchive::Clear(this);

    return TSWP::PlaceholderSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::PlaceholderSmartFieldArchive::InternalSwap(TSWP::PlaceholderSmartFieldArchive *this, TSWP::PlaceholderSmartFieldArchive *a2)
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
  LOBYTE(v7) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

TSWP::UnsupportedHyperlinkFieldArchive *TSWP::UnsupportedHyperlinkFieldArchive::UnsupportedHyperlinkFieldArchive(TSWP::UnsupportedHyperlinkFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602DB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UnsupportedHyperlinkFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  return this;
}

TSWP::UnsupportedHyperlinkFieldArchive *TSWP::UnsupportedHyperlinkFieldArchive::UnsupportedHyperlinkFieldArchive(TSWP::UnsupportedHyperlinkFieldArchive *this, const TSWP::UnsupportedHyperlinkFieldArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288602DB0;
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
  return this;
}

void TSWP::UnsupportedHyperlinkFieldArchive::~UnsupportedHyperlinkFieldArchive(TSWP::UnsupportedHyperlinkFieldArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  if (this != &TSWP::_UnsupportedHyperlinkFieldArchive_default_instance_)
  {
    v5 = *(this + 5);
    if (v5)
    {
      TSWP::PlaceholderSmartFieldArchive::~PlaceholderSmartFieldArchive(v5);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::UnsupportedHyperlinkFieldArchive::~UnsupportedHyperlinkFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::UnsupportedHyperlinkFieldArchive::default_instance(TSWP::UnsupportedHyperlinkFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_UnsupportedHyperlinkFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UnsupportedHyperlinkFieldArchive_default_instance_;
}

uint64_t *TSWP::UnsupportedHyperlinkFieldArchive::Clear(uint64_t *this)
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
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
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

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    this = TSWP::PlaceholderSmartFieldArchive::Clear(this[5]);
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
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

google::protobuf::internal *TSWP::UnsupportedHyperlinkFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_276EA4A1C(a3, &v17) & 1) == 0)
  {
    v5 = (v17 + 1);
    v6 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v17 + 2);
LABEL_6:
      v17 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v15;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      goto LABEL_24;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
LABEL_24:
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_30;
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_30;
    }

    *(a1 + 16) |= 4u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v13);
      *(a1 + 40) = v12;
      v5 = v17;
    }

    v11 = sub_276F5379C(a3, v12, v5);
LABEL_30:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *TSWP::UnsupportedHyperlinkFieldArchive::_InternalSerialize(TSWP::UnsupportedHyperlinkFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 5);
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

    v4 = TSWP::PlaceholderSmartFieldArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_4:
    v4 = sub_276E5154C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UnsupportedHyperlinkFieldArchive::ByteSizeLong(TSWP::UnsupportedHyperlinkFieldArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_14;
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
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
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
    v10 = TSWP::PlaceholderSmartFieldArchive::ByteSizeLong(*(this + 5));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::UnsupportedHyperlinkFieldArchive::MergeFrom(TSWP::UnsupportedHyperlinkFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UnsupportedHyperlinkFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UnsupportedHyperlinkFieldArchive::MergeFrom(uint64_t this, const TSWP::UnsupportedHyperlinkFieldArchive *a2)
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

LABEL_10:
        *(v3 + 16) |= 4u;
        v6 = *(v3 + 40);
        if (!v6)
        {
          v7 = *(v3 + 8);
          if (v7)
          {
            v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
          }

          v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v7);
          *(v3 + 40) = v6;
        }

        if (*(a2 + 5))
        {
          v8 = *(a2 + 5);
        }

        else
        {
          v8 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
        }

        return TSWP::PlaceholderSmartFieldArchive::MergeFrom(v6, v8);
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
      return this;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSWP::UnsupportedHyperlinkFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UnsupportedHyperlinkFieldArchive::Clear(this);

    return TSWP::UnsupportedHyperlinkFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UnsupportedHyperlinkFieldArchive::CopyFrom(uint64_t *this, const TSWP::UnsupportedHyperlinkFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UnsupportedHyperlinkFieldArchive::Clear(this);

    return TSWP::UnsupportedHyperlinkFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UnsupportedHyperlinkFieldArchive::InternalSwap(TSWP::UnsupportedHyperlinkFieldArchive *this, TSWP::UnsupportedHyperlinkFieldArchive *a2)
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
  return result;
}

uint64_t TSWP::BibliographySmartFieldArchive::clear_citation_records(uint64_t this)
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

TSWP::BibliographySmartFieldArchive *TSWP::BibliographySmartFieldArchive::BibliographySmartFieldArchive(TSWP::BibliographySmartFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602E60;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_BibliographySmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  return this;
}

TSWP::BibliographySmartFieldArchive *TSWP::BibliographySmartFieldArchive::BibliographySmartFieldArchive(TSWP::BibliographySmartFieldArchive *this, const TSWP::BibliographySmartFieldArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288602E60;
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

void sub_276E8E634(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x1081C4072235B19);
  sub_276EA5ECC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::BibliographySmartFieldArchive::~BibliographySmartFieldArchive(TSWP::BibliographySmartFieldArchive *this)
{
  if (this != &TSWP::_BibliographySmartFieldArchive_default_instance_)
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
  TSWP::BibliographySmartFieldArchive::~BibliographySmartFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::BibliographySmartFieldArchive::default_instance(TSWP::BibliographySmartFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_BibliographySmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_BibliographySmartFieldArchive_default_instance_;
}

uint64_t *TSWP::BibliographySmartFieldArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSWP::BibliographySmartFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSWP::BibliographySmartFieldArchive::_InternalSerialize(TSWP::BibliographySmartFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWP::BibliographySmartFieldArchive::ByteSizeLong(TSWP::BibliographySmartFieldArchive *this)
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