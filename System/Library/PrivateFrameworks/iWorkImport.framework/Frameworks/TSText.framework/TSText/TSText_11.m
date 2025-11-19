google::protobuf::internal *TSWP::UndoTransaction_InsertAttributeTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_33;
          }

          *(a1 + 16) |= 2u;
          v19 = *(a1 + 32);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277CA3250](v20);
            LODWORD(v19) = v21;
            *(a1 + 32) = v21;
            v7 = v29;
          }

          v15 = sub_276F4F9E8(a3, v19, v7);
        }

        else
        {
          if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v15 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_40;
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
            sub_276EA4A94((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
        }

LABEL_40:
        v29 = v15;
        if (!v15)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_33;
        }

        v5 |= 4u;
        v16 = (v7 + 1);
        LODWORD(v17) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        v18 = *v16;
        v17 = (v17 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_26:
          v29 = v16;
          *(a1 + 40) = v17;
          goto LABEL_41;
        }

        v27 = google::protobuf::internal::VarintParseSlow32(v7, v17);
        v29 = v27;
        *(a1 + 40) = v28;
        if (!v27)
        {
LABEL_50:
          v29 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_33;
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
          v29 = v12;
          *(a1 + 44) = v13;
          goto LABEL_41;
        }

        v25 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v29 = v25;
        *(a1 + 44) = v26;
        if (!v25)
        {
          goto LABEL_50;
        }
      }

LABEL_41:
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

unsigned __int8 *TSWP::UndoTransaction_InsertAttributeTransaction::_InternalSerialize(TSWP::UndoTransaction_InsertAttributeTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 11);
    *v4 = 16;
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
        if ((v6 & 2) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 10);
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
      if ((v6 & 8) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 8) != 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4[1] = v9;
    v4 += 2;
    if ((v6 & 8) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 4);
  *v4 = 26;
  v18 = *(v17 + 5);
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

  v4 = TSP::Reference::_InternalSerialize(v17, v19, a3);
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

uint64_t TSWP::UndoTransaction_InsertAttributeTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_InsertAttributeTransaction *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    result = ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSWP::UndoTransaction_InsertAttributeTransaction::ByteSizeLong(TSWP::UndoTransaction_InsertAttributeTransaction *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0xC) != 0)
  {
    v3 = TSWP::UndoTransaction_InsertAttributeTransaction::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v7 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::UndoTransaction_InsertAttributeTransaction::MergeFrom(TSWP::UndoTransaction_InsertAttributeTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_InsertAttributeTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_InsertAttributeTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_InsertAttributeTransaction *a2)
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

uint64_t *TSWP::UndoTransaction_InsertAttributeTransaction::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_InsertAttributeTransaction::Clear(this);

    return TSWP::UndoTransaction_InsertAttributeTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_InsertAttributeTransaction::CopyFrom(uint64_t *this, const TSWP::UndoTransaction_InsertAttributeTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_InsertAttributeTransaction::Clear(this);

    return TSWP::UndoTransaction_InsertAttributeTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UndoTransaction_InsertAttributeTransaction::IsInitialized(TSWP::UndoTransaction_InsertAttributeTransaction *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0xC) != 0)
  {
    return 0;
  }

  if ((v1 & 2) == 0)
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

__n128 TSWP::UndoTransaction_InsertAttributeTransaction::InternalSwap(__n128 *this, __n128 *a2)
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

void *TSWP::UndoTransaction_InsertNilTransaction::UndoTransaction_InsertNilTransaction(void *result, uint64_t a2)
{
  *result = &unk_288601C80;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288601C80;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSWP::UndoTransaction_InsertNilTransaction *TSWP::UndoTransaction_InsertNilTransaction::UndoTransaction_InsertNilTransaction(TSWP::UndoTransaction_InsertNilTransaction *this, const TSWP::UndoTransaction_InsertNilTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601C80;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSWP::UndoTransaction_InsertNilTransaction::~UndoTransaction_InsertNilTransaction(TSWP::UndoTransaction_InsertNilTransaction *this)
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

uint64_t *TSWP::UndoTransaction_InsertNilTransaction::default_instance(TSWP::UndoTransaction_InsertNilTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_InsertNilTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_InsertNilTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_InsertNilTransaction::Clear(TSWP::UndoTransaction_InsertNilTransaction *this)
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
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::UndoTransaction_InsertNilTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v24) & 1) == 0)
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
            sub_276EA4A94((a1 + 8));
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
      if (sub_276EA4A1C(a3, &v24))
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

unsigned __int8 *TSWP::UndoTransaction_InsertNilTransaction::_InternalSerialize(TSWP::UndoTransaction_InsertNilTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWP::UndoTransaction_InsertNilTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_InsertNilTransaction *this)
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

uint64_t TSWP::UndoTransaction_InsertNilTransaction::ByteSizeLong(TSWP::UndoTransaction_InsertNilTransaction *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSWP::UndoTransaction_InsertNilTransaction::RequiredFieldsByteSizeFallback(this);
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

uint64_t TSWP::UndoTransaction_InsertNilTransaction::MergeFrom(TSWP::UndoTransaction_InsertNilTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_InsertNilTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_InsertNilTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_InsertNilTransaction *a2)
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

TSWP::UndoTransaction_InsertNilTransaction *TSWP::UndoTransaction_InsertNilTransaction::CopyFrom(TSWP::UndoTransaction_InsertNilTransaction *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_InsertNilTransaction::Clear(this);

    return TSWP::UndoTransaction_InsertNilTransaction::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::UndoTransaction_InsertNilTransaction *TSWP::UndoTransaction_InsertNilTransaction::CopyFrom(TSWP::UndoTransaction_InsertNilTransaction *this, const TSWP::UndoTransaction_InsertNilTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_InsertNilTransaction::Clear(this);

    return TSWP::UndoTransaction_InsertNilTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_InsertNilTransaction::InternalSwap(TSWP::UndoTransaction_InsertNilTransaction *this, TSWP::UndoTransaction_InsertNilTransaction *a2)
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

uint64_t TSWP::UndoTransaction_CharDeltaTransaction::UndoTransaction_CharDeltaTransaction(uint64_t result, uint64_t a2)
{
  *result = &unk_288601D30;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_288601D30;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSWP::UndoTransaction_CharDeltaTransaction *TSWP::UndoTransaction_CharDeltaTransaction::UndoTransaction_CharDeltaTransaction(TSWP::UndoTransaction_CharDeltaTransaction *this, const TSWP::UndoTransaction_CharDeltaTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601D30;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v6;
  return this;
}

void TSWP::UndoTransaction_CharDeltaTransaction::~UndoTransaction_CharDeltaTransaction(TSWP::UndoTransaction_CharDeltaTransaction *this)
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

uint64_t *TSWP::UndoTransaction_CharDeltaTransaction::default_instance(TSWP::UndoTransaction_CharDeltaTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_CharDeltaTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_CharDeltaTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_CharDeltaTransaction::Clear(TSWP::UndoTransaction_CharDeltaTransaction *this)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 8) = 0;
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::UndoTransaction_CharDeltaTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 24)
        {
          v16 = (v7 + 1);
          v17 = *v7;
          if ((v17 & 0x8000000000000000) != 0)
          {
            v17 = (*v16 << 7) + v17 - 128;
            if (*v16 < 0)
            {
              v16 = google::protobuf::internal::VarintParseSlow64(v7, v17);
            }

            else
            {
              v16 = (v7 + 2);
            }
          }

          v5 |= 4u;
          v27 = v16;
          *(a1 + 32) = -(v17 & 1) ^ (v17 >> 1);
          if (!v16)
          {
            goto LABEL_45;
          }

          goto LABEL_42;
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

        v27 = google::protobuf::internal::UnknownFieldParse();
        if (!v27)
        {
LABEL_45:
          v27 = 0;
          goto LABEL_2;
        }

        goto LABEL_42;
      }

      if (v10 == 2)
      {
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
          v27 = v13;
          *(a1 + 28) = v14;
          goto LABEL_42;
        }

        v23 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v27 = v23;
        *(a1 + 28) = v24;
        if (!v23)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_33:
          v27 = v18;
          *(a1 + 24) = v19;
          goto LABEL_42;
        }

        v25 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v27 = v25;
        *(a1 + 24) = v26;
        if (!v25)
        {
          goto LABEL_45;
        }
      }

LABEL_42:
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

unsigned __int8 *TSWP::UndoTransaction_CharDeltaTransaction::_InternalSerialize(TSWP::UndoTransaction_CharDeltaTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 6);
    *a2 = 8;
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
        if ((v5 & 2) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        a2[2] = v10;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      a2[1] = v8;
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

  v15 = *(this + 7);
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = v16;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    a2[1] = v15;
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

  v6 = *(this + 8);
  *a2 = 24;
  v7 = (2 * v6) ^ (v6 >> 31);
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
    a2[1] = v7;
    a2 += 2;
  }

LABEL_35:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_CharDeltaTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_CharDeltaTransaction *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz((2 * *(this + 8)) ^ (*(this + 8) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSWP::UndoTransaction_CharDeltaTransaction::ByteSizeLong(TSWP::UndoTransaction_CharDeltaTransaction *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v2 = TSWP::UndoTransaction_CharDeltaTransaction::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz((2 * *(this + 8)) ^ (*(this + 8) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 3;
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

uint64_t TSWP::UndoTransaction_CharDeltaTransaction::MergeFrom(TSWP::UndoTransaction_CharDeltaTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_CharDeltaTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_CharDeltaTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_CharDeltaTransaction *a2)
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
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          v3[4] |= v5;
          return this;
        }

LABEL_7:
        v3[8] = *(a2 + 8);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TSWP::UndoTransaction_CharDeltaTransaction *TSWP::UndoTransaction_CharDeltaTransaction::CopyFrom(TSWP::UndoTransaction_CharDeltaTransaction *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_CharDeltaTransaction::Clear(this);

    return TSWP::UndoTransaction_CharDeltaTransaction::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::UndoTransaction_CharDeltaTransaction *TSWP::UndoTransaction_CharDeltaTransaction::CopyFrom(TSWP::UndoTransaction_CharDeltaTransaction *this, const TSWP::UndoTransaction_CharDeltaTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_CharDeltaTransaction::Clear(this);

    return TSWP::UndoTransaction_CharDeltaTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_CharDeltaTransaction::InternalSwap(TSWP::UndoTransaction_CharDeltaTransaction *this, TSWP::UndoTransaction_CharDeltaTransaction *a2)
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

void *TSWP::UndoTransaction_ParagraphDataTransaction::UndoTransaction_ParagraphDataTransaction(void *result, uint64_t a2)
{
  *result = &unk_288601DE0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_288601DE0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSWP::UndoTransaction_ParagraphDataTransaction *TSWP::UndoTransaction_ParagraphDataTransaction::UndoTransaction_ParagraphDataTransaction(TSWP::UndoTransaction_ParagraphDataTransaction *this, const TSWP::UndoTransaction_ParagraphDataTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601DE0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSWP::UndoTransaction_ParagraphDataTransaction::~UndoTransaction_ParagraphDataTransaction(TSWP::UndoTransaction_ParagraphDataTransaction *this)
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

uint64_t *TSWP::UndoTransaction_ParagraphDataTransaction::default_instance(TSWP::UndoTransaction_ParagraphDataTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_ParagraphDataTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_ParagraphDataTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_ParagraphDataTransaction::Clear(TSWP::UndoTransaction_ParagraphDataTransaction *this)
{
  if ((*(this + 16) & 0xF) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::UndoTransaction_ParagraphDataTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v35) & 1) == 0)
  {
    while (1)
    {
      v7 = (v35 + 1);
      v8 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v9 - 128));
      v35 = TagFallback;
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
          if (v8 != 24)
          {
            goto LABEL_35;
          }

          v5 |= 4u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_34:
            v35 = v21;
            *(a1 + 32) = v22;
            goto LABEL_42;
          }

          v33 = google::protobuf::internal::VarintParseSlow32(v7, v22);
          v35 = v33;
          *(a1 + 32) = v34;
          if (!v33)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_35;
          }

          v5 |= 8u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_24:
            v35 = v15;
            *(a1 + 36) = v16;
            goto LABEL_42;
          }

          v27 = google::protobuf::internal::VarintParseSlow32(v7, v16);
          v35 = v27;
          *(a1 + 36) = v28;
          if (!v27)
          {
            goto LABEL_55;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_35;
        }

        v5 |= 1u;
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
          v35 = v18;
          *(a1 + 24) = v19;
          goto LABEL_42;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v35 = v31;
        *(a1 + 24) = v32;
        if (!v31)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
LABEL_35:
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

          v35 = google::protobuf::internal::UnknownFieldParse();
          if (!v35)
          {
LABEL_55:
            v35 = 0;
            goto LABEL_2;
          }

          goto LABEL_42;
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
          v35 = v12;
          *(a1 + 28) = v13;
          goto LABEL_42;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v35 = v29;
        *(a1 + 28) = v30;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

LABEL_42:
      if (sub_276EA4A1C(a3, &v35))
      {
        goto LABEL_2;
      }
    }

    v7 = (v35 + 2);
LABEL_6:
    v35 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

unsigned __int8 *TSWP::UndoTransaction_ParagraphDataTransaction::_InternalSerialize(TSWP::UndoTransaction_ParagraphDataTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 7);
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
        if ((v5 & 4) != 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 6);
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
        goto LABEL_25;
      }
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
      if ((v5 & 2) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    a2[1] = v7;
    a2 += 2;
    if ((v5 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 8);
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
      if ((v5 & 8) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      a2[2] = v19;
      a2 += 3;
      if ((v5 & 8) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    a2[1] = v18;
    a2 += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 9);
  *a2 = 32;
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

LABEL_47:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_ParagraphDataTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_ParagraphDataTransaction *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
    return result;
  }

  result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t TSWP::UndoTransaction_ParagraphDataTransaction::ByteSizeLong(TSWP::UndoTransaction_ParagraphDataTransaction *this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    v4 = TSWP::UndoTransaction_ParagraphDataTransaction::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2.i64[0] = 0x1F0000001FLL;
    v2.i64[1] = 0x1F0000001FLL;
    v3.i64[0] = 0x4900000049;
    v3.i64[1] = 0x4900000049;
    v4 = (vaddvq_s32(vshrq_n_u32(vmlal_u16(v3, vmovn_s32(veorq_s8(vclzq_s32((*(this + 24) | __PAIR128__(0x100000001, 0x100000001))), v2)), 0x9000900090009), 6uLL)) + 4);
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

uint64_t TSWP::UndoTransaction_ParagraphDataTransaction::MergeFrom(TSWP::UndoTransaction_ParagraphDataTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_ParagraphDataTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_ParagraphDataTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_ParagraphDataTransaction *a2)
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
      v3[6] = *(a2 + 6);
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

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        v3[4] |= v5;
        return this;
      }

LABEL_8:
      v3[9] = *(a2 + 9);
      goto LABEL_9;
    }

LABEL_13:
    v3[8] = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSWP::UndoTransaction_ParagraphDataTransaction *TSWP::UndoTransaction_ParagraphDataTransaction::CopyFrom(TSWP::UndoTransaction_ParagraphDataTransaction *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_ParagraphDataTransaction::Clear(this);

    return TSWP::UndoTransaction_ParagraphDataTransaction::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::UndoTransaction_ParagraphDataTransaction *TSWP::UndoTransaction_ParagraphDataTransaction::CopyFrom(TSWP::UndoTransaction_ParagraphDataTransaction *this, const TSWP::UndoTransaction_ParagraphDataTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_ParagraphDataTransaction::Clear(this);

    return TSWP::UndoTransaction_ParagraphDataTransaction::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWP::UndoTransaction_ParagraphDataTransaction::InternalSwap(TSWP::UndoTransaction_ParagraphDataTransaction *this, TSWP::UndoTransaction_ParagraphDataTransaction *a2)
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

TSP::Reference *TSWP::UndoTransaction_ObjectDOLCTransaction::clear_object(TSWP::UndoTransaction_ObjectDOLCTransaction *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::UndoTransaction_ObjectDOLCTransaction *TSWP::UndoTransaction_ObjectDOLCTransaction::UndoTransaction_ObjectDOLCTransaction(TSWP::UndoTransaction_ObjectDOLCTransaction *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601E90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_ObjectDOLCTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288601E90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_ObjectDOLCTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSWP::UndoTransaction_ObjectDOLCTransaction *TSWP::UndoTransaction_ObjectDOLCTransaction::UndoTransaction_ObjectDOLCTransaction(TSWP::UndoTransaction_ObjectDOLCTransaction *this, const TSWP::UndoTransaction_ObjectDOLCTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601E90;
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

void TSWP::UndoTransaction_ObjectDOLCTransaction::~UndoTransaction_ObjectDOLCTransaction(TSWP::UndoTransaction_ObjectDOLCTransaction *this)
{
  if (this != &TSWP::_UndoTransaction_ObjectDOLCTransaction_default_instance_)
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
  TSWP::UndoTransaction_ObjectDOLCTransaction::~UndoTransaction_ObjectDOLCTransaction(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::UndoTransaction_ObjectDOLCTransaction::default_instance(TSWP::UndoTransaction_ObjectDOLCTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_ObjectDOLCTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_ObjectDOLCTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_ObjectDOLCTransaction::Clear(uint64_t *this)
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

google::protobuf::internal *TSWP::UndoTransaction_ObjectDOLCTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277CA3250](v14);
            LODWORD(v13) = v15;
            *(a1 + 24) = v15;
            v7 = v23;
          }

          v12 = sub_276F4F9E8(a3, v13, v7);
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
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
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
        v23 = v16;
        *(a1 + 32) = v17;
        goto LABEL_31;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v17);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_38:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_31:
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

unsigned __int8 *TSWP::UndoTransaction_ObjectDOLCTransaction::_InternalSerialize(TSWP::UndoTransaction_ObjectDOLCTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  v8 = *(this + 3);
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

  a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_ObjectDOLCTransaction::ByteSizeLong(TSWP::UndoTransaction_ObjectDOLCTransaction *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v3 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
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

uint64_t TSWP::UndoTransaction_ObjectDOLCTransaction::MergeFrom(TSWP::UndoTransaction_ObjectDOLCTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_ObjectDOLCTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_ObjectDOLCTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_ObjectDOLCTransaction *a2)
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
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_ObjectDOLCTransaction::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_ObjectDOLCTransaction::Clear(this);

    return TSWP::UndoTransaction_ObjectDOLCTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_ObjectDOLCTransaction::CopyFrom(uint64_t *this, const TSWP::UndoTransaction_ObjectDOLCTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_ObjectDOLCTransaction::Clear(this);

    return TSWP::UndoTransaction_ObjectDOLCTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UndoTransaction_ObjectDOLCTransaction::IsInitialized(TSWP::UndoTransaction_ObjectDOLCTransaction *this)
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

uint64_t *TSWP::UndoTransaction_ObjectDOLCTransaction::InternalSwap(TSWP::UndoTransaction_ObjectDOLCTransaction *this, TSWP::UndoTransaction_ObjectDOLCTransaction *a2)
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

TSP::Date *TSWP::UndoTransaction_CTDateTransaction::clear_date(TSWP::UndoTransaction_CTDateTransaction *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::UndoTransaction_CTDateTransaction *TSWP::UndoTransaction_CTDateTransaction::UndoTransaction_CTDateTransaction(TSWP::UndoTransaction_CTDateTransaction *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601F40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_CTDateTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288601F40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_CTDateTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSWP::UndoTransaction_CTDateTransaction *TSWP::UndoTransaction_CTDateTransaction::UndoTransaction_CTDateTransaction(TSWP::UndoTransaction_CTDateTransaction *this, const TSWP::UndoTransaction_CTDateTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601F40;
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

void TSWP::UndoTransaction_CTDateTransaction::~UndoTransaction_CTDateTransaction(TSWP::UndoTransaction_CTDateTransaction *this)
{
  if (this != &TSWP::_UndoTransaction_CTDateTransaction_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Date::~Date(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::UndoTransaction_CTDateTransaction::~UndoTransaction_CTDateTransaction(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::UndoTransaction_CTDateTransaction::default_instance(TSWP::UndoTransaction_CTDateTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_CTDateTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_CTDateTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_CTDateTransaction::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Date::Clear(this[3]);
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

google::protobuf::internal *TSWP::UndoTransaction_CTDateTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277CA31F0](v14);
            LODWORD(v13) = v15;
            *(a1 + 24) = v15;
            v7 = v23;
          }

          v12 = sub_276F52514(a3, v13, v7);
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
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
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
        v23 = v16;
        *(a1 + 32) = v17;
        goto LABEL_31;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v17);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_38:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_31:
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

unsigned __int8 *TSWP::UndoTransaction_CTDateTransaction::_InternalSerialize(TSWP::UndoTransaction_CTDateTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  v8 = *(this + 3);
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

  a2 = TSP::Date::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_CTDateTransaction::ByteSizeLong(TSWP::UndoTransaction_CTDateTransaction *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v3 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v4 = TSP::Date::ByteSizeLong(*(this + 3));
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

uint64_t TSWP::UndoTransaction_CTDateTransaction::MergeFrom(TSWP::UndoTransaction_CTDateTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_CTDateTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_CTDateTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_CTDateTransaction *a2)
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

        v6 = MEMORY[0x277CA31F0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809C0];
      }

      this = TSP::Date::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_CTDateTransaction::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_CTDateTransaction::Clear(this);

    return TSWP::UndoTransaction_CTDateTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_CTDateTransaction::CopyFrom(uint64_t *this, const TSWP::UndoTransaction_CTDateTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_CTDateTransaction::Clear(this);

    return TSWP::UndoTransaction_CTDateTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UndoTransaction_CTDateTransaction::IsInitialized(TSWP::UndoTransaction_CTDateTransaction *this)
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

  result = TSP::Date::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWP::UndoTransaction_CTDateTransaction::InternalSwap(TSWP::UndoTransaction_CTDateTransaction *this, TSWP::UndoTransaction_CTDateTransaction *a2)
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

TSWP::UndoTransaction_UnionTransaction *TSWP::UndoTransaction_UnionTransaction::UndoTransaction_UnionTransaction(TSWP::UndoTransaction_UnionTransaction *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601FF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_UnionTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 100) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 29) = 1;
  return this;
}

TSWP::UndoTransaction_UnionTransaction *TSWP::UndoTransaction_UnionTransaction::UndoTransaction_UnionTransaction(TSWP::UndoTransaction_UnionTransaction *this, const TSWP::UndoTransaction_UnionTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601FF0;
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
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v5 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v5 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  *(this + 14) = *(a2 + 14);
  return this;
}

void TSWP::UndoTransaction_UnionTransaction::~UndoTransaction_UnionTransaction(TSWP::UndoTransaction_UnionTransaction *this)
{
  sub_276E7DB78(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::UndoTransaction_UnionTransaction::~UndoTransaction_UnionTransaction(this);

  JUMPOUT(0x277CA3D00);
}

void *sub_276E7DB78(void *result)
{
  if (result != &TSWP::_UndoTransaction_UnionTransaction_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_276E4E808((v2 + 8));
      MEMORY[0x277CA3D00](v2, 0x1081C40B7564605);
    }

    v3 = v1[4];
    if (v3)
    {
      TSWP::UndoTransaction_TextTransaction::~UndoTransaction_TextTransaction(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSWP::UndoTransaction_CharIndexTransaction::~UndoTransaction_CharIndexTransaction(v4);
      MEMORY[0x277CA3D00]();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_276E4E808((v5 + 8));
      MEMORY[0x277CA3D00](v5, 0x1081C404FE48876);
    }

    v6 = v1[7];
    if (v6)
    {
      TSWP::UndoTransaction_AttributeIndexTransaction::~UndoTransaction_AttributeIndexTransaction(v6);
      MEMORY[0x277CA3D00]();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_276E4E808((v7 + 8));
      MEMORY[0x277CA3D00](v7, 0x1081C404FE48876);
    }

    v8 = v1[9];
    if (v8)
    {
      TSWP::UndoTransaction_InsertAttributeTransaction::~UndoTransaction_InsertAttributeTransaction(v8);
      MEMORY[0x277CA3D00]();
    }

    v9 = v1[10];
    if (v9)
    {
      sub_276E4E808((v9 + 8));
      MEMORY[0x277CA3D00](v9, 0x1081C40B7564605);
    }

    v10 = v1[11];
    if (v10)
    {
      sub_276E4E808((v10 + 8));
      MEMORY[0x277CA3D00](v10, 0x1081C40825B58B5);
    }

    v11 = v1[12];
    if (v11)
    {
      TSWP::UndoTransaction_ObjectDOLCTransaction::~UndoTransaction_ObjectDOLCTransaction(v11);
      MEMORY[0x277CA3D00]();
    }

    result = v1[13];
    if (result)
    {
      TSWP::UndoTransaction_CTDateTransaction::~UndoTransaction_CTDateTransaction(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::UndoTransaction_UnionTransaction::default_instance(TSWP::UndoTransaction_UnionTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_UnionTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_UnionTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_UnionTransaction::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSWP::UndoTransaction_GenericTransaction::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSWP::UndoTransaction_TextTransaction::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = TSWP::UndoTransaction_CharIndexTransaction::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = TSWP::UndoTransaction_ReplaceCharIndexTransaction::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    this = TSWP::UndoTransaction_InsertNilTransaction::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  this = TSWP::UndoTransaction_AttributeIndexTransaction::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  this = TSWP::UndoTransaction_InsertAttributeTransaction::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSWP::UndoTransaction_CharDeltaTransaction::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSWP::UndoTransaction_ParagraphDataTransaction::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSWP::UndoTransaction_ObjectDOLCTransaction::Clear(*(v1 + 96));
  if ((v2 & 0x400) != 0)
  {
LABEL_15:
    this = TSWP::UndoTransaction_CTDateTransaction::Clear(*(v1 + 104));
  }

LABEL_16:
  if ((v2 & 0x1800) != 0)
  {
    *(v1 + 112) = 0x100000000;
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

google::protobuf::internal *TSWP::UndoTransaction_UnionTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v44) & 1) == 0)
  {
    while (1)
    {
      v7 = (v44 + 1);
      v8 = *v44;
      if (*v44 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v9 - 128));
          v44 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_104;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v44 + 2);
      }

      v44 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_88;
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
            v44 = google::protobuf::internal::VarintParseSlow64(v7, v10);
            if (!v44)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v11 = (v7 + 2);
LABEL_12:
            v44 = v11;
          }

          if ((v10 - 1) > 9)
          {
            sub_276F53EA8();
          }

          else
          {
            *(a1 + 16) |= 0x1000u;
            *(a1 + 116) = v10;
          }

          goto LABEL_96;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_88;
          }

          v5 |= 0x800u;
          v30 = (v7 + 1);
          LODWORD(v31) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          v32 = *v30;
          v31 = (v31 + (v32 << 7) - 128);
          if (v32 < 0)
          {
            v42 = google::protobuf::internal::VarintParseSlow32(v7, v31);
            v44 = v42;
            *(a1 + 112) = v43;
            if (!v42)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_63:
            v44 = v30;
            *(a1 + 112) = v31;
          }

          goto LABEL_96;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 1u;
          v28 = *(a1 + 24);
          if (!v28)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_GenericTransaction>(v29);
            *(a1 + 24) = v28;
            v7 = v44;
          }

          v17 = sub_276F525E4(a3, v28, v7);
          goto LABEL_95;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 2u;
          v26 = *(a1 + 32);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_TextTransaction>(v27);
            *(a1 + 32) = v26;
            v7 = v44;
          }

          v17 = sub_276F526B4(a3, v26, v7);
          goto LABEL_95;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_88;
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

            v18 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_CharIndexTransaction>(v19);
            *(a1 + 40) = v18;
            v7 = v44;
          }

          v17 = sub_276F52784(a3, v18, v7);
          goto LABEL_95;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_88;
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

            v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_ReplaceCharIndexTransaction>(v23);
            *(a1 + 48) = v22;
            v7 = v44;
          }

          v17 = sub_276F52854(a3, v22, v7);
          goto LABEL_95;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 0x10u;
          v33 = *(a1 + 56);
          if (!v33)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_AttributeIndexTransaction>(v34);
            *(a1 + 56) = v33;
            v7 = v44;
          }

          v17 = sub_276F52924(a3, v33, v7);
          goto LABEL_95;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 0x20u;
          inserted = *(a1 + 64);
          if (!inserted)
          {
            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            inserted = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_InsertNilTransaction>(v36);
            *(a1 + 64) = inserted;
            v7 = v44;
          }

          v17 = sub_276F529F4(a3, inserted, v7);
          goto LABEL_95;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 0x40u;
          v39 = *(a1 + 72);
          if (!v39)
          {
            v40 = *(a1 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            v39 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_InsertAttributeTransaction>(v40);
            *(a1 + 72) = v39;
            v7 = v44;
          }

          v17 = sub_276F52AC4(a3, v39, v7);
          goto LABEL_95;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 0x80u;
          v37 = *(a1 + 80);
          if (!v37)
          {
            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_CharDeltaTransaction>(v38);
            *(a1 + 80) = v37;
            v7 = v44;
          }

          v17 = sub_276F52B94(a3, v37, v7);
          goto LABEL_95;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 88);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_ParagraphDataTransaction>(v16);
            *(a1 + 88) = v15;
            v7 = v44;
          }

          v17 = sub_276F52C64(a3, v15, v7);
          goto LABEL_95;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 0x200u;
          v24 = *(a1 + 96);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_ObjectDOLCTransaction>(v25);
            *(a1 + 96) = v24;
            v7 = v44;
          }

          v17 = sub_276F52D34(a3, v24, v7);
          goto LABEL_95;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 0x400u;
          v20 = *(a1 + 104);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_CTDateTransaction>(v21);
            *(a1 + 104) = v20;
            v7 = v44;
          }

          v17 = sub_276F52E04(a3, v20, v7);
          goto LABEL_95;
        default:
LABEL_88:
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

          v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_95:
          v44 = v17;
          if (!v17)
          {
LABEL_104:
            v44 = 0;
            goto LABEL_2;
          }

LABEL_96:
          if (sub_276EA4A1C(a3, &v44))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

unsigned __int8 *TSWP::UndoTransaction_UnionTransaction::_InternalSerialize(TSWP::UndoTransaction_UnionTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x1000) == 0)
  {
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 28);
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
          goto LABEL_37;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if (v5)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if (v5)
      {
        goto LABEL_37;
      }
    }

LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 29);
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
        goto LABEL_26;
      }
    }

    else
    {
      a2[2] = v7;
      a2 += 3;
      if ((v5 & 0x800) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 0x800) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_3:
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 3);
  *a2 = 42;
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

  a2 = TSWP::UndoTransaction_GenericTransaction::_InternalSerialize(v14, v16, a3);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 4);
  *a2 = 50;
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

  a2 = TSWP::UndoTransaction_TextTransaction::_InternalSerialize(v20, v22, a3);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_57:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 5);
  *a2 = 58;
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

  a2 = TSWP::UndoTransaction_CharIndexTransaction::_InternalSerialize(v26, v28, a3);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

LABEL_67:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 6);
  *a2 = 66;
  v33 = *(v32 + 5);
  if (v33 > 0x7F)
  {
    a2[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = a2 + 3;
      do
      {
        *(v34 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++v34;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(v34 - 1) = v36;
    }

    else
    {
      a2[2] = v35;
      v34 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v33;
    v34 = a2 + 2;
  }

  a2 = TSWP::UndoTransaction_ReplaceCharIndexTransaction::_InternalSerialize(v32, v34, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_87;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 7);
  *a2 = 74;
  v39 = *(v38 + 5);
  if (v39 > 0x7F)
  {
    a2[1] = v39 | 0x80;
    v41 = v39 >> 7;
    if (v39 >> 14)
    {
      v40 = a2 + 3;
      do
      {
        *(v40 - 1) = v41 | 0x80;
        v42 = v41 >> 7;
        ++v40;
        v43 = v41 >> 14;
        v41 >>= 7;
      }

      while (v43);
      *(v40 - 1) = v42;
    }

    else
    {
      a2[2] = v41;
      v40 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v39;
    v40 = a2 + 2;
  }

  a2 = TSWP::UndoTransaction_AttributeIndexTransaction::_InternalSerialize(v38, v40, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_97;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v44 = *(this + 8);
  *a2 = 82;
  v45 = *(v44 + 5);
  if (v45 > 0x7F)
  {
    a2[1] = v45 | 0x80;
    v47 = v45 >> 7;
    if (v45 >> 14)
    {
      v46 = a2 + 3;
      do
      {
        *(v46 - 1) = v47 | 0x80;
        v48 = v47 >> 7;
        ++v46;
        v49 = v47 >> 14;
        v47 >>= 7;
      }

      while (v49);
      *(v46 - 1) = v48;
    }

    else
    {
      a2[2] = v47;
      v46 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v45;
    v46 = a2 + 2;
  }

  a2 = TSWP::UndoTransaction_InsertNilTransaction::_InternalSerialize(v44, v46, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_107;
  }

LABEL_97:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 9);
  *a2 = 90;
  v51 = *(v50 + 5);
  if (v51 > 0x7F)
  {
    a2[1] = v51 | 0x80;
    v53 = v51 >> 7;
    if (v51 >> 14)
    {
      v52 = a2 + 3;
      do
      {
        *(v52 - 1) = v53 | 0x80;
        v54 = v53 >> 7;
        ++v52;
        v55 = v53 >> 14;
        v53 >>= 7;
      }

      while (v55);
      *(v52 - 1) = v54;
    }

    else
    {
      a2[2] = v53;
      v52 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v51;
    v52 = a2 + 2;
  }

  a2 = TSWP::UndoTransaction_InsertAttributeTransaction::_InternalSerialize(v50, v52, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_117;
  }

LABEL_107:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v56 = *(this + 10);
  *a2 = 98;
  v57 = *(v56 + 5);
  if (v57 > 0x7F)
  {
    a2[1] = v57 | 0x80;
    v59 = v57 >> 7;
    if (v57 >> 14)
    {
      v58 = a2 + 3;
      do
      {
        *(v58 - 1) = v59 | 0x80;
        v60 = v59 >> 7;
        ++v58;
        v61 = v59 >> 14;
        v59 >>= 7;
      }

      while (v61);
      *(v58 - 1) = v60;
    }

    else
    {
      a2[2] = v59;
      v58 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v57;
    v58 = a2 + 2;
  }

  a2 = TSWP::UndoTransaction_CharDeltaTransaction::_InternalSerialize(v56, v58, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_127;
  }

LABEL_117:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v62 = *(this + 11);
  *a2 = 106;
  v63 = *(v62 + 5);
  if (v63 > 0x7F)
  {
    a2[1] = v63 | 0x80;
    v65 = v63 >> 7;
    if (v63 >> 14)
    {
      v64 = a2 + 3;
      do
      {
        *(v64 - 1) = v65 | 0x80;
        v66 = v65 >> 7;
        ++v64;
        v67 = v65 >> 14;
        v65 >>= 7;
      }

      while (v67);
      *(v64 - 1) = v66;
    }

    else
    {
      a2[2] = v65;
      v64 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v63;
    v64 = a2 + 2;
  }

  a2 = TSWP::UndoTransaction_ParagraphDataTransaction::_InternalSerialize(v62, v64, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_137;
  }

LABEL_127:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v68 = *(this + 12);
  *a2 = 114;
  v69 = *(v68 + 5);
  if (v69 > 0x7F)
  {
    a2[1] = v69 | 0x80;
    v71 = v69 >> 7;
    if (v69 >> 14)
    {
      v70 = a2 + 3;
      do
      {
        *(v70 - 1) = v71 | 0x80;
        v72 = v71 >> 7;
        ++v70;
        v73 = v71 >> 14;
        v71 >>= 7;
      }

      while (v73);
      *(v70 - 1) = v72;
    }

    else
    {
      a2[2] = v71;
      v70 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v69;
    v70 = a2 + 2;
  }

  a2 = TSWP::UndoTransaction_ObjectDOLCTransaction::_InternalSerialize(v68, v70, a3);
  if ((v5 & 0x400) != 0)
  {
LABEL_137:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v74 = *(this + 13);
    *a2 = 122;
    v75 = *(v74 + 5);
    if (v75 > 0x7F)
    {
      a2[1] = v75 | 0x80;
      v77 = v75 >> 7;
      if (v75 >> 14)
      {
        v76 = a2 + 3;
        do
        {
          *(v76 - 1) = v77 | 0x80;
          v78 = v77 >> 7;
          ++v76;
          v79 = v77 >> 14;
          v77 >>= 7;
        }

        while (v79);
        *(v76 - 1) = v78;
      }

      else
      {
        a2[2] = v77;
        v76 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v75;
      v76 = a2 + 2;
    }

    a2 = TSWP::UndoTransaction_CTDateTransaction::_InternalSerialize(v74, v76, a3);
  }

LABEL_147:
  v80 = *(this + 1);
  if ((v80 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v80 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_UnionTransaction::ByteSizeLong(TSWP::UndoTransaction_UnionTransaction *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1000) != 0)
  {
    v4 = *(this + 29);
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

  if (!*(this + 4))
  {
    goto LABEL_16;
  }

  if (v2)
  {
    v7 = TSWP::UndoTransaction_GenericTransaction::ByteSizeLong(*(this + 3));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_9:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

  v8 = TSWP::UndoTransaction_TextTransaction::ByteSizeLong(*(this + 4));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = TSWP::UndoTransaction_CharIndexTransaction::ByteSizeLong(*(this + 5));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = TSWP::UndoTransaction_ReplaceCharIndexTransaction::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    v12 = TSWP::UndoTransaction_InsertNilTransaction::ByteSizeLong(*(this + 8));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_14:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_28:
  v11 = TSWP::UndoTransaction_AttributeIndexTransaction::ByteSizeLong(*(this + 7));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_30:
  v13 = TSWP::UndoTransaction_InsertAttributeTransaction::ByteSizeLong(*(this + 9));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_15:
    v5 = TSWP::UndoTransaction_CharDeltaTransaction::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  if ((v2 & 0xF00) == 0)
  {
    goto LABEL_22;
  }

  if ((v2 & 0x100) != 0)
  {
    v14 = TSWP::UndoTransaction_ParagraphDataTransaction::ByteSizeLong(*(this + 11));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_19:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v15 = TSWP::UndoTransaction_ObjectDOLCTransaction::ByteSizeLong(*(this + 12));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_20:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_34:
  v16 = TSWP::UndoTransaction_CTDateTransaction::ByteSizeLong(*(this + 13));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) != 0)
  {
LABEL_21:
    v3 += ((9 * (__clz(*(this + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
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

uint64_t TSWP::UndoTransaction_UnionTransaction::MergeFrom(TSWP::UndoTransaction_UnionTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_UnionTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_UnionTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_UnionTransaction *a2)
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
    goto LABEL_77;
  }

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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_GenericTransaction>(v7);
      *(v3 + 24) = v6;
    }

    if (*(a2 + 3))
    {
      v8 = *(a2 + 3);
    }

    else
    {
      v8 = &TSWP::_UndoTransaction_GenericTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction_GenericTransaction::MergeFrom(v6, v8);
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

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_TextTransaction>(v10);
    *(v3 + 32) = v9;
  }

  if (*(a2 + 4))
  {
    v11 = *(a2 + 4);
  }

  else
  {
    v11 = &TSWP::_UndoTransaction_TextTransaction_default_instance_;
  }

  this = TSWP::UndoTransaction_TextTransaction::MergeFrom(v9, v11);
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

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_CharIndexTransaction>(v13);
    *(v3 + 40) = v12;
  }

  if (*(a2 + 5))
  {
    v14 = *(a2 + 5);
  }

  else
  {
    v14 = &TSWP::_UndoTransaction_CharIndexTransaction_default_instance_;
  }

  this = TSWP::UndoTransaction_CharIndexTransaction::MergeFrom(v12, v14);
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

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_ReplaceCharIndexTransaction>(v16);
    *(v3 + 48) = v15;
  }

  if (*(a2 + 6))
  {
    v17 = *(a2 + 6);
  }

  else
  {
    v17 = &TSWP::_UndoTransaction_ReplaceCharIndexTransaction_default_instance_;
  }

  this = TSWP::UndoTransaction_ReplaceCharIndexTransaction::MergeFrom(v15, v17);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    inserted = *(v3 + 64);
    if (!inserted)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      inserted = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_InsertNilTransaction>(v22);
      *(v3 + 64) = inserted;
    }

    if (*(a2 + 8))
    {
      v23 = *(a2 + 8);
    }

    else
    {
      v23 = &TSWP::_UndoTransaction_InsertNilTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction_InsertNilTransaction::MergeFrom(inserted, v23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 56);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_AttributeIndexTransaction>(v19);
    *(v3 + 56) = v18;
  }

  if (*(a2 + 7))
  {
    v20 = *(a2 + 7);
  }

  else
  {
    v20 = &TSWP::_UndoTransaction_AttributeIndexTransaction_default_instance_;
  }

  this = TSWP::UndoTransaction_AttributeIndexTransaction::MergeFrom(v18, v20);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 72);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_InsertAttributeTransaction>(v25);
    *(v3 + 72) = v24;
  }

  if (*(a2 + 9))
  {
    v26 = *(a2 + 9);
  }

  else
  {
    v26 = &TSWP::_UndoTransaction_InsertAttributeTransaction_default_instance_;
  }

  this = TSWP::UndoTransaction_InsertAttributeTransaction::MergeFrom(v24, v26);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 80);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_CharDeltaTransaction>(v28);
      *(v3 + 80) = v27;
    }

    if (*(a2 + 10))
    {
      v29 = *(a2 + 10);
    }

    else
    {
      v29 = &TSWP::_UndoTransaction_CharDeltaTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction_CharDeltaTransaction::MergeFrom(v27, v29);
  }

LABEL_77:
  if ((v5 & 0x1F00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v30 = *(v3 + 88);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_ParagraphDataTransaction>(v31);
      *(v3 + 88) = v30;
    }

    if (*(a2 + 11))
    {
      v32 = *(a2 + 11);
    }

    else
    {
      v32 = &TSWP::_UndoTransaction_ParagraphDataTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction_ParagraphDataTransaction::MergeFrom(v30, v32);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_102;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v33 = *(v3 + 96);
  if (!v33)
  {
    v34 = *(v3 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_ObjectDOLCTransaction>(v34);
    *(v3 + 96) = v33;
  }

  if (*(a2 + 12))
  {
    v35 = *(a2 + 12);
  }

  else
  {
    v35 = &TSWP::_UndoTransaction_ObjectDOLCTransaction_default_instance_;
  }

  this = TSWP::UndoTransaction_ObjectDOLCTransaction::MergeFrom(v33, v35);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

LABEL_110:
    *(v3 + 112) = *(a2 + 28);
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_102:
  *(v3 + 16) |= 0x400u;
  v36 = *(v3 + 104);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_CTDateTransaction>(v37);
    *(v3 + 104) = v36;
  }

  if (*(a2 + 13))
  {
    v38 = *(a2 + 13);
  }

  else
  {
    v38 = &TSWP::_UndoTransaction_CTDateTransaction_default_instance_;
  }

  this = TSWP::UndoTransaction_CTDateTransaction::MergeFrom(v36, v38);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_110;
  }

LABEL_82:
  if ((v5 & 0x1000) != 0)
  {
LABEL_83:
    *(v3 + 116) = *(a2 + 29);
  }

LABEL_84:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSWP::UndoTransaction_UnionTransaction::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_UnionTransaction::Clear(this);

    return TSWP::UndoTransaction_UnionTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_UnionTransaction::CopyFrom(uint64_t *this, const TSWP::UndoTransaction_UnionTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_UnionTransaction::Clear(this);

    return TSWP::UndoTransaction_UnionTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UndoTransaction_UnionTransaction::IsInitialized(TSWP::UndoTransaction_UnionTransaction *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x1000) == 0)
  {
    return 0;
  }

  if ((v1 & 1) != 0 && (~*(*(this + 3) + 16) & 7) != 0 || (v1 & 2) != 0 && (~*(*(this + 4) + 16) & 6) != 0)
  {
    return 0;
  }

  if ((v1 & 4) != 0)
  {
    v4 = *(this + 5);
    v5 = *(v4 + 16);
    if ((~v5 & 6) != 0)
    {
      return 0;
    }

    if (v5)
    {
      result = TSP::Reference::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v1 = *(this + 4);
    }
  }

  if ((v1 & 8) != 0 && (~*(*(this + 6) + 16) & 3) != 0)
  {
    return 0;
  }

  if ((v1 & 0x10) != 0)
  {
    v6 = *(this + 7);
    v7 = *(v6 + 16);
    if ((~v7 & 0xC) != 0)
    {
      return 0;
    }

    if ((v7 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(v6 + 32));
      if (!result)
      {
        return result;
      }

      v1 = *(this + 4);
    }
  }

  if ((v1 & 0x20) != 0 && (~*(*(this + 8) + 16) & 3) != 0)
  {
    return 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(this + 9);
  v9 = *(v8 + 16);
  if ((~v9 & 0xC) != 0)
  {
    return 0;
  }

  if ((v9 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(v8 + 32));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

LABEL_14:
  if ((v1 & 0x80) != 0 && (~*(*(this + 10) + 16) & 7) != 0 || (v1 & 0x100) != 0 && (~*(*(this + 11) + 16) & 0xF) != 0)
  {
    return 0;
  }

  if ((v1 & 0x200) != 0)
  {
    result = TSWP::UndoTransaction_ObjectDOLCTransaction::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x400) == 0)
  {
    return 1;
  }

  result = TSWP::UndoTransaction_CTDateTransaction::IsInitialized(*(this + 13));
  if (result)
  {
    return 1;
  }

  return result;
}

void TSWP::UndoTransaction_UnionTransaction::InternalSwap(TSWP::UndoTransaction_UnionTransaction *this, TSWP::UndoTransaction_UnionTransaction *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  sub_276E7F70C(this + 3, a2 + 24);
  v5 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v5;
}

__n128 sub_276E7F70C(uint64_t *a1, uint64_t a2)
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
  LODWORD(v13) = *(a1 + 22);
  *(a1 + 22) = *(a2 + 88);
  *(a2 + 88) = v13;
  return result;
}

TSP::Range *TSWP::UndoTransaction_StorageAction::clear_range(TSWP::UndoTransaction_StorageAction *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Range::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSWP::UndoTransaction_StorageAction::clear_object(TSWP::UndoTransaction_StorageAction *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Date *TSWP::UndoTransaction_StorageAction::clear_date(TSWP::UndoTransaction_StorageAction *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TSWP::UndoTransaction_StorageAction::clear_undo_object(TSWP::UndoTransaction_StorageAction *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSWP::UndoTransaction_StorageAction *TSWP::UndoTransaction_StorageAction::UndoTransaction_StorageAction(TSWP::UndoTransaction_StorageAction *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886020A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_StorageAction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return this;
}

TSWP::UndoTransaction_StorageAction *TSWP::UndoTransaction_StorageAction::UndoTransaction_StorageAction(TSWP::UndoTransaction_StorageAction *this, const TSWP::UndoTransaction_StorageAction *a2)
{
  *(this + 1) = 0;
  *this = &unk_2886020A0;
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
  if ((v4 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  v7 = *(a2 + 72);
  *(this + 84) = *(a2 + 84);
  *(this + 72) = v7;
  return this;
}

void TSWP::UndoTransaction_StorageAction::~UndoTransaction_StorageAction(TSWP::UndoTransaction_StorageAction *this)
{
  sub_276E7FB7C(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::UndoTransaction_StorageAction::~UndoTransaction_StorageAction(this);

  JUMPOUT(0x277CA3D00);
}

TSP::Reference *sub_276E7FB7C(TSP::Reference *result)
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

  if (v1 != &TSWP::_UndoTransaction_StorageAction_default_instance_)
  {
    v5 = *(v1 + 5);
    if (v5)
    {
      TSP::Range::~Range(v5);
      MEMORY[0x277CA3D00]();
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277CA3D00]();
    }

    v7 = *(v1 + 7);
    if (v7)
    {
      TSP::Date::~Date(v7);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 8);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::UndoTransaction_StorageAction::default_instance(TSWP::UndoTransaction_StorageAction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_StorageAction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_StorageAction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_StorageAction::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
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

LABEL_26:
    this = TSP::Reference::Clear(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_27;
  }

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
  this = TSP::Range::Clear(this[5]);
  if ((v2 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  this = TSP::Date::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    this = TSP::Reference::Clear(*(v1 + 64));
  }

LABEL_9:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 72) = 0;
  }

  if ((v2 & 0x1F00) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
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

google::protobuf::internal *TSWP::UndoTransaction_StorageAction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v58 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v58) & 1) == 0)
  {
    while (1)
    {
      v7 = (v58 + 1);
      v8 = *v58;
      if (*v58 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v58, (v9 - 128));
          v58 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_102;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v58 + 2);
      }

      v58 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_76;
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
            v58 = google::protobuf::internal::VarintParseSlow64(v7, v10);
            if (!v58)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v11 = (v7 + 2);
LABEL_12:
            v58 = v11;
          }

          if (v10 > 2)
          {
            sub_276F53EA8();
          }

          else
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 72) = v10;
          }

          goto LABEL_84;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_76;
          }

          v5 |= 0x80u;
          v31 = (v7 + 1);
          LODWORD(v32) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          v33 = *v31;
          v32 = (v32 + (v33 << 7) - 128);
          if (v33 < 0)
          {
            v52 = google::protobuf::internal::VarintParseSlow32(v7, v32);
            v58 = v52;
            *(a1 + 76) = v53;
            if (!v52)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_52:
            v58 = v31;
            *(a1 + 76) = v32;
          }

          goto LABEL_84;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_76;
          }

          v5 |= 0x100u;
          v22 = (v7 + 1);
          LODWORD(v23) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

          v24 = *v22;
          v23 = (v23 + (v24 << 7) - 128);
          if (v24 < 0)
          {
            v48 = google::protobuf::internal::VarintParseSlow32(v7, v23);
            v58 = v48;
            *(a1 + 80) = v49;
            if (!v48)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_36:
            v58 = v22;
            *(a1 + 80) = v23;
          }

          goto LABEL_84;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 4u;
          v25 = *(a1 + 40);
          if (!v25)
          {
            v26 = *(a1 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = MEMORY[0x277CA3230](v26);
            LODWORD(v25) = v27;
            *(a1 + 40) = v27;
            v7 = v58;
          }

          v15 = sub_276F4F918(a3, v25, v7);
          goto LABEL_83;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_21;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 8u;
          v16 = *(a1 + 48);
          if (v16)
          {
            goto LABEL_59;
          }

          v34 = *(a1 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v35 = MEMORY[0x277CA3250](v34);
          LODWORD(v16) = v35;
          *(a1 + 48) = v35;
          goto LABEL_58;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 0x10u;
          v36 = *(a1 + 56);
          if (!v36)
          {
            v37 = *(a1 + 8);
            if (v37)
            {
              v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
            }

            v38 = MEMORY[0x277CA31F0](v37);
            LODWORD(v36) = v38;
            *(a1 + 56) = v38;
            v7 = v58;
          }

          v15 = sub_276F52514(a3, v36, v7);
          goto LABEL_83;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_76;
          }

          v5 |= 0x200u;
          v28 = (v7 + 1);
          LODWORD(v29) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_47;
          }

          v30 = *v28;
          v29 = (v29 + (v30 << 7) - 128);
          if (v30 < 0)
          {
            v50 = google::protobuf::internal::VarintParseSlow32(v7, v29);
            v58 = v50;
            *(a1 + 84) = v51;
            if (!v50)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_47:
            v58 = v28;
            *(a1 + 84) = v29;
          }

          goto LABEL_84;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_76;
          }

          v5 |= 0x400u;
          v42 = (v7 + 1);
          LODWORD(v43) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_75;
          }

          v44 = *v42;
          v43 = (v43 + (v44 << 7) - 128);
          if (v44 < 0)
          {
            v56 = google::protobuf::internal::VarintParseSlow32(v7, v43);
            v58 = v56;
            *(a1 + 88) = v57;
            if (!v56)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v42 = (v7 + 2);
LABEL_75:
            v58 = v42;
            *(a1 + 88) = v43;
          }

          goto LABEL_84;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_76;
          }

          v5 |= 0x800u;
          v19 = (v7 + 1);
          LODWORD(v20) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          v21 = *v19;
          v20 = (v20 + (v21 << 7) - 128);
          if (v21 < 0)
          {
            v46 = google::protobuf::internal::VarintParseSlow32(v7, v20);
            v58 = v46;
            *(a1 + 92) = v47;
            if (!v46)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_31:
            v58 = v19;
            *(a1 + 92) = v20;
          }

          goto LABEL_84;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_76;
          }

          v5 |= 0x1000u;
          v40 = (v7 + 1);
          LODWORD(v39) = *v7;
          if ((v39 & 0x80) == 0)
          {
            goto LABEL_70;
          }

          v41 = *v40;
          v39 = (v39 + (v41 << 7) - 128);
          if (v41 < 0)
          {
            v54 = google::protobuf::internal::VarintParseSlow64(v7, v39);
            v58 = v54;
            *(a1 + 96) = v55;
            if (!v54)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_70:
            v58 = v40;
            *(a1 + 96) = v39;
          }

          goto LABEL_84;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 2u;
LABEL_21:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v15 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_83;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 0x20u;
          v16 = *(a1 + 64);
          if (v16)
          {
            goto LABEL_59;
          }

          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277CA3250](v17);
          LODWORD(v16) = v18;
          *(a1 + 64) = v18;
LABEL_58:
          v7 = v58;
LABEL_59:
          v15 = sub_276F4F9E8(a3, v16, v7);
          goto LABEL_83;
        default:
LABEL_76:
          if (v8)
          {
            v45 = (v8 & 7) == 4;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
LABEL_83:
          v58 = v15;
          if (!v15)
          {
LABEL_102:
            v58 = 0;
            goto LABEL_2;
          }

LABEL_84:
          if (sub_276EA4A1C(a3, &v58))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v58;
}

unsigned __int8 *TSWP::UndoTransaction_StorageAction::_InternalSerialize(TSWP::UndoTransaction_StorageAction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 18);
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
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_3:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_4;
    }

LABEL_37:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 20);
    *v4 = 24;
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
        if ((v6 & 4) != 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

  if ((v6 & 0x80) == 0)
  {
    goto LABEL_3;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 19);
  *v4 = 16;
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
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v4[1] = v11;
    v4 += 2;
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_4:
  if ((v6 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_48:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 5);
  *v4 = 34;
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

  v4 = TSP::Range::_InternalSerialize(v19, v21, a3);
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v4 = sub_276E5154C(a3, 5, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_69;
  }

LABEL_59:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 6);
  *v4 = 50;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v27;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v27 - 1) = v29;
    }

    else
    {
      v4[2] = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v26;
    v27 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_79;
  }

LABEL_69:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(this + 7);
  *v4 = 58;
  v32 = *(v31 + 5);
  if (v32 > 0x7F)
  {
    v4[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = v4 + 3;
      do
      {
        *(v33 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++v33;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(v33 - 1) = v35;
    }

    else
    {
      v4[2] = v34;
      v33 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v32;
    v33 = v4 + 2;
  }

  v4 = TSP::Date::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_9:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_10;
    }

LABEL_90:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(this + 22);
    *v4 = 72;
    if (v41 > 0x7F)
    {
      v4[1] = v41 | 0x80;
      v42 = v41 >> 7;
      if (v41 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          ++v4;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(v4 - 1) = v43;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v4[2] = v42;
        v4 += 3;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v4[1] = v41;
      v4 += 2;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_101;
      }
    }

LABEL_11:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

LABEL_112:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v49 = *(this + 24);
    *v4 = 88;
    if (v49 > 0x7F)
    {
      v4[1] = v49 | 0x80;
      v50 = v49 >> 7;
      if (v49 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v50 | 0x80;
          v51 = v50 >> 7;
          ++v4;
          v52 = v50 >> 14;
          v50 >>= 7;
        }

        while (v52);
        *(v4 - 1) = v51;
        if ((v6 & 2) != 0)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v4[2] = v50;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      v4[1] = v49;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_123;
      }
    }

LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_124;
  }

LABEL_79:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 21);
  *v4 = 64;
  if (v37 > 0x7F)
  {
    v4[1] = v37 | 0x80;
    v38 = v37 >> 7;
    if (v37 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v4;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v4 - 1) = v39;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v4[2] = v38;
      v4 += 3;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_90;
      }
    }
  }

  else
  {
    v4[1] = v37;
    v4 += 2;
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_90;
    }
  }

LABEL_10:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_11;
  }

LABEL_101:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(this + 23);
  *v4 = 80;
  if (v45 > 0x7F)
  {
    v4[1] = v45 | 0x80;
    v46 = v45 >> 7;
    if (v45 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v4;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v4 - 1) = v47;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v4[2] = v46;
      v4 += 3;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_112;
      }
    }
  }

  else
  {
    v4[1] = v45;
    v4 += 2;
    if ((v6 & 0x1000) != 0)
    {
      goto LABEL_112;
    }
  }

LABEL_12:
  if ((v6 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_123:
  v4 = sub_276E5154C(a3, 12, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_134;
  }

LABEL_124:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v53 = *(this + 8);
  *v4 = 106;
  v54 = *(v53 + 5);
  if (v54 > 0x7F)
  {
    v4[1] = v54 | 0x80;
    v56 = v54 >> 7;
    if (v54 >> 14)
    {
      v55 = v4 + 3;
      do
      {
        *(v55 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++v55;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(v55 - 1) = v57;
    }

    else
    {
      v4[2] = v56;
      v55 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v54;
    v55 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v53, v55, a3);
LABEL_134:
  v59 = *(this + 1);
  if ((v59 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v59 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_StorageAction::ByteSizeLong(TSWP::UndoTransaction_StorageAction *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(this + 18);
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

  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_14;
  }

  if (v2)
  {
    v6 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_9:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_30:
    v13 = TSP::Reference::ByteSizeLong(*(this + 6));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
LABEL_12:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_29:
  v12 = TSP::Range::ByteSizeLong(*(this + 5));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_31:
  v14 = TSP::Date::ByteSizeLong(*(this + 7));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_13:
    v5 = TSP::Reference::ByteSizeLong(*(this + 8));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  if ((v2 & 0x80) != 0)
  {
    v3 += ((9 * (__clz(*(this + 19) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 0x1F00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 += ((9 * (__clz(*(this + 20) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x200) == 0)
      {
LABEL_19:
        if ((v2 & 0x400) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_35;
      }
    }

    else if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    v3 += ((9 * (__clz(*(this + 21) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x400) == 0)
    {
LABEL_20:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }

LABEL_35:
    v3 += ((9 * (__clz(*(this + 22) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x800) == 0)
    {
LABEL_21:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_41;
      }

LABEL_37:
      v15 = *(this + 24);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v16;
      goto LABEL_41;
    }

LABEL_36:
    v3 += ((9 * (__clz(*(this + 23) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_41:
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

uint64_t TSWP::UndoTransaction_StorageAction::MergeFrom(TSWP::UndoTransaction_StorageAction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_StorageAction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_StorageAction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_StorageAction *a2)
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
          goto LABEL_18;
        }

        goto LABEL_10;
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
      goto LABEL_18;
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

      v6 = MEMORY[0x277CA3230](v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 5))
    {
      v8 = *(a2 + 5);
    }

    else
    {
      v8 = MEMORY[0x277D809F8];
    }

    this = TSP::Range::MergeFrom(v6, v8);
LABEL_18:
    v9 = MEMORY[0x277D80A18];
    if ((v5 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v10 = *(v3 + 48);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277CA3250](v11);
        *(v3 + 48) = v10;
      }

      if (*(a2 + 6))
      {
        v12 = *(a2 + 6);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
      if ((v5 & 0x10) == 0)
      {
LABEL_20:
        if ((v5 & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_50;
      }
    }

    else if ((v5 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    *(v3 + 16) |= 0x10u;
    v13 = *(v3 + 56);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277CA31F0](v14);
      *(v3 + 56) = v13;
    }

    if (*(a2 + 7))
    {
      v15 = *(a2 + 7);
    }

    else
    {
      v15 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v13, v15);
    if ((v5 & 0x20) == 0)
    {
LABEL_21:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(v3 + 16) |= 0x20u;
    v16 = *(v3 + 64);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277CA3250](v17);
      *(v3 + 64) = v16;
    }

    if (*(a2 + 8))
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = v9;
    }

    this = TSP::Reference::MergeFrom(v16, v18);
    if ((v5 & 0x40) == 0)
    {
LABEL_22:
      if ((v5 & 0x80) == 0)
      {
LABEL_24:
        *(v3 + 16) |= v5;
        goto LABEL_25;
      }

LABEL_23:
      *(v3 + 76) = *(a2 + 19);
      goto LABEL_24;
    }

LABEL_58:
    *(v3 + 72) = *(a2 + 18);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_25:
  if ((v5 & 0x1F00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 80) = *(a2 + 20);
    if ((v5 & 0x200) == 0)
    {
LABEL_28:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_62;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_28;
  }

  *(v3 + 84) = *(a2 + 21);
  if ((v5 & 0x400) == 0)
  {
LABEL_29:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_30;
    }

LABEL_63:
    *(v3 + 92) = *(a2 + 23);
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_62:
  *(v3 + 88) = *(a2 + 22);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_63;
  }

LABEL_30:
  if ((v5 & 0x1000) != 0)
  {
LABEL_31:
    *(v3 + 96) = *(a2 + 24);
  }

LABEL_32:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSWP::UndoTransaction_StorageAction::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_StorageAction::Clear(this);

    return TSWP::UndoTransaction_StorageAction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_StorageAction::CopyFrom(uint64_t *this, const TSWP::UndoTransaction_StorageAction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_StorageAction::Clear(this);

    return TSWP::UndoTransaction_StorageAction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UndoTransaction_StorageAction::IsInitialized(TSWP::UndoTransaction_StorageAction *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x40) == 0)
  {
    return 0;
  }

  if ((v1 & 4) != 0)
  {
    result = TSP::Range::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSP::Date::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::UndoTransaction_StorageAction::InternalSwap(TSWP::UndoTransaction_StorageAction *this, TSWP::UndoTransaction_StorageAction *a2)
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
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  LODWORD(v14) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v14;
  return result;
}

TSWP::UndoTransaction_StorageActionGroup *TSWP::UndoTransaction_StorageActionGroup::UndoTransaction_StorageActionGroup(TSWP::UndoTransaction_StorageActionGroup *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602150;
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
  if (atomic_load_explicit(scc_info_UndoTransaction_StorageActionGroup_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 24) = 0;
  return this;
}

void sub_276E8142C(_Unwind_Exception *a1)
{
  sub_276EA6154(v3);
  sub_276EA6154(v2);
  sub_276EA6154(v1);
  _Unwind_Resume(a1);
}

TSWP::UndoTransaction_StorageActionGroup *TSWP::UndoTransaction_StorageActionGroup::UndoTransaction_StorageActionGroup(TSWP::UndoTransaction_StorageActionGroup *this, const TSWP::UndoTransaction_StorageActionGroup *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288602150;
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
    sub_276EA61D8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276EA61D8(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_276EA61D8(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
    sub_276EA4CDC(v4, (v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void sub_276E81628(_Unwind_Exception *a1)
{
  sub_276EA6154(v3);
  sub_276EA6154(v2);
  sub_276EA6154((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::UndoTransaction_StorageActionGroup::~UndoTransaction_StorageActionGroup(TSWP::UndoTransaction_StorageActionGroup *this)
{
  sub_276E4E808(this + 1);
  sub_276EA6154(this + 9);
  sub_276EA6154(this + 6);
  sub_276EA6154(this + 3);
}

{
  TSWP::UndoTransaction_StorageActionGroup::~UndoTransaction_StorageActionGroup(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::UndoTransaction_StorageActionGroup::default_instance(TSWP::UndoTransaction_StorageActionGroup *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_StorageActionGroup_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_StorageActionGroup_default_instance_;
}

uint64_t *TSWP::UndoTransaction_StorageActionGroup::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::UndoTransaction_StorageAction::Clear(v4);
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
      this = TSWP::UndoTransaction_StorageAction::Clear(v7);
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
      this = TSWP::UndoTransaction_StorageAction::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 88) = 0;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_276EA4D28(v11);
  }

  return this;
}

google::protobuf::internal *TSWP::UndoTransaction_StorageActionGroup::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (sub_276EA4A1C(a3, &v41))
      {
        return v41;
      }

      v5 = (v41 + 1);
      v6 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        v5 = (v41 + 2);
LABEL_6:
        v41 = v5;
        goto LABEL_7;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v7 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v39;
LABEL_7:
      v8 = v6 >> 3;
      if (v6 >> 3 > 3)
      {
        if (v8 != 4)
        {
          if (v8 != 6 || v6 != 50)
          {
            goto LABEL_61;
          }

          v18 = (v5 - 1);
          while (1)
          {
            v19 = (v18 + 1);
            v41 = (v18 + 1);
            v20 = *(a1 + 88);
            if (!v20)
            {
              goto LABEL_31;
            }

            v25 = *(a1 + 80);
            v21 = *v20;
            if (v25 < *v20)
            {
              *(a1 + 80) = v25 + 1;
              v22 = *&v20[2 * v25 + 2];
              goto LABEL_35;
            }

            if (v21 == *(a1 + 84))
            {
LABEL_31:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
              v20 = *(a1 + 88);
              v21 = *v20;
            }

            *v20 = v21 + 1;
            v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_StorageAction>(*(a1 + 72));
            v23 = *(a1 + 80);
            v24 = *(a1 + 88) + 8 * v23;
            *(a1 + 80) = v23 + 1;
            *(v24 + 8) = v22;
            v19 = v41;
LABEL_35:
            v18 = sub_276F52ED4(a3, v22, v19);
            v41 = v18;
            if (!v18)
            {
              return 0;
            }

            if (*a3 <= v18 || *v18 != 50)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 34)
        {
          goto LABEL_61;
        }

        v29 = (v5 - 1);
        while (1)
        {
          v30 = (v29 + 1);
          v41 = (v29 + 1);
          v31 = *(a1 + 64);
          if (!v31)
          {
            goto LABEL_51;
          }

          v36 = *(a1 + 56);
          v32 = *v31;
          if (v36 < *v31)
          {
            *(a1 + 56) = v36 + 1;
            v33 = *&v31[2 * v36 + 2];
            goto LABEL_55;
          }

          if (v32 == *(a1 + 60))
          {
LABEL_51:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v31 = *(a1 + 64);
            v32 = *v31;
          }

          *v31 = v32 + 1;
          v33 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_StorageAction>(*(a1 + 48));
          v34 = *(a1 + 56);
          v35 = *(a1 + 64) + 8 * v34;
          *(a1 + 56) = v34 + 1;
          *(v35 + 8) = v33;
          v30 = v41;
LABEL_55:
          v29 = sub_276F52ED4(a3, v33, v30);
          v41 = v29;
          if (!v29)
          {
            return 0;
          }

          if (*a3 <= v29 || *v29 != 34)
          {
            goto LABEL_2;
          }
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if (v6 != 8)
      {
        goto LABEL_61;
      }

      v27 = (v5 + 1);
      v26 = *v5;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = (v5 + 2);
LABEL_45:
        v41 = v27;
        goto LABEL_46;
      }

      v41 = google::protobuf::internal::VarintParseSlow64(v5, v26);
      if (!v41)
      {
        return 0;
      }

LABEL_46:
      if (v26 > 2)
      {
        sub_276F53EA8();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 96) = v26;
      }
    }

    if (v8 == 3 && v6 == 26)
    {
      v10 = (v5 - 1);
      while (1)
      {
        v11 = (v10 + 1);
        v41 = (v10 + 1);
        v12 = *(a1 + 40);
        if (!v12)
        {
          goto LABEL_16;
        }

        v17 = *(a1 + 32);
        v13 = *v12;
        if (v17 < *v12)
        {
          *(a1 + 32) = v17 + 1;
          v14 = *&v12[2 * v17 + 2];
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
        v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_StorageAction>(*(a1 + 24));
        v15 = *(a1 + 32);
        v16 = *(a1 + 40) + 8 * v15;
        *(a1 + 32) = v15 + 1;
        *(v16 + 8) = v14;
        v11 = v41;
LABEL_20:
        v10 = sub_276F52ED4(a3, v14, v11);
        v41 = v10;
        if (!v10)
        {
          return 0;
        }

        if (*a3 <= v10 || *v10 != 26)
        {
          goto LABEL_2;
        }
      }
    }

LABEL_61:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276EA4A94((a1 + 8));
    }

    v41 = google::protobuf::internal::UnknownFieldParse();
    if (!v41)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v41;
}

unsigned __int8 *TSWP::UndoTransaction_StorageActionGroup::_InternalSerialize(TSWP::UndoTransaction_StorageActionGroup *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 24);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = a2 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          a2[2] = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v12;
        v13 = a2 + 2;
      }

      a2 = TSWP::UndoTransaction_StorageAction::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 14);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 8) + 8 * j + 8);
      *a2 = 34;
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

      a2 = TSWP::UndoTransaction_StorageAction::_InternalSerialize(v19, v21, a3);
    }
  }

  v25 = *(this + 20);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v27 = *(*(this + 11) + 8 * k + 8);
      *a2 = 50;
      v28 = *(v27 + 5);
      if (v28 > 0x7F)
      {
        a2[1] = v28 | 0x80;
        v30 = v28 >> 7;
        if (v28 >> 14)
        {
          v29 = a2 + 3;
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
          a2[2] = v30;
          v29 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v28;
        v29 = a2 + 2;
      }

      a2 = TSWP::UndoTransaction_StorageAction::_InternalSerialize(v27, v29, a3);
    }
  }

  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v33 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_StorageActionGroup::ByteSizeLong(TSWP::UndoTransaction_StorageActionGroup *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 24);
    v2 = 11;
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v3 >= 0)
    {
      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *(this + 8);
  v6 = v2 + v5;
  v7 = *(this + 5);
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
      v11 = TSWP::UndoTransaction_StorageAction::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(this + 14);
  v13 = v6 + v12;
  v14 = *(this + 8);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = TSWP::UndoTransaction_StorageAction::ByteSizeLong(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(this + 20);
  v20 = v13 + v19;
  v21 = *(this + 11);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = *v22++;
      v25 = TSWP::UndoTransaction_StorageAction::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v20, this + 20);
  }

  else
  {
    *(this + 5) = v20;
    return v20;
  }
}

uint64_t TSWP::UndoTransaction_StorageActionGroup::MergeFrom(TSWP::UndoTransaction_StorageActionGroup *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_StorageActionGroup::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_StorageActionGroup::MergeFrom(uint64_t this, const TSWP::UndoTransaction_StorageActionGroup *a2)
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
    this = sub_276EA61D8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_276EA61D8(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_276EA61D8(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
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
    v20 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    *(v3 + 96) = v20;
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_StorageActionGroup::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_StorageActionGroup::Clear(this);

    return TSWP::UndoTransaction_StorageActionGroup::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_StorageActionGroup::CopyFrom(uint64_t *this, const TSWP::UndoTransaction_StorageActionGroup *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_StorageActionGroup::Clear(this);

    return TSWP::UndoTransaction_StorageActionGroup::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::UndoTransaction_StorageActionGroup::IsInitialized(TSWP::UndoTransaction_StorageActionGroup *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSWP::UndoTransaction_StorageAction::IsInitialized(*(*(this + 5) + 8 * v2));
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
    v7 = TSWP::UndoTransaction_StorageAction::IsInitialized(*(*(this + 8) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
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
    v12 = TSWP::UndoTransaction_StorageAction::IsInitialized(*(*(this + 11) + 8 * v10));
    v10 = v11;
  }

  while ((v12 & 1) != 0);
  return v8;
}

__n128 TSWP::UndoTransaction_StorageActionGroup::InternalSwap(TSWP::UndoTransaction_StorageActionGroup *this, TSWP::UndoTransaction_StorageActionGroup *a2)
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
  v9 = *(this + 10);
  v10 = *(this + 11);
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  LODWORD(v9) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v9;
  return result;
}

TSWP::UndoTransaction *TSWP::UndoTransaction::UndoTransaction(TSWP::UndoTransaction *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602200;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  return this;
}

void sub_276E82558(_Unwind_Exception *a1)
{
  sub_276EA631C(v2);
  sub_276EA6298(v1);
  _Unwind_Resume(a1);
}

TSWP::UndoTransaction *TSWP::UndoTransaction::UndoTransaction(TSWP::UndoTransaction *this, const TSWP::UndoTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288602200;
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
    sub_276EA63A0(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276EA6460(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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

  *(this + 9) = *(a2 + 9);
  return this;
}

void sub_276E826D8(_Unwind_Exception *a1)
{
  sub_276EA631C(v2);
  sub_276EA6298((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::UndoTransaction::~UndoTransaction(TSWP::UndoTransaction *this)
{
  sub_276E4E808(this + 1);
  sub_276EA631C(this + 6);
  sub_276EA6298(this + 3);
}

{
  TSWP::UndoTransaction::~UndoTransaction(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::UndoTransaction::default_instance(TSWP::UndoTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::UndoTransaction_UnionTransaction::Clear(v4);
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
      this = TSWP::UndoTransaction_StorageActionGroup::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 72) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_276EA4D28(v8);
  }

  return this;
}

google::protobuf::internal *TSWP::UndoTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v41) & 1) == 0)
  {
    while (1)
    {
      v7 = (v41 + 1);
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v9 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v36;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_51;
          }

          v12 = (v7 - 1);
          while (2)
          {
            v13 = (v12 + 1);
            v41 = (v12 + 1);
            v14 = *(a1 + 64);
            if (!v14)
            {
LABEL_16:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v14 = *(a1 + 64);
              v15 = *v14;
              goto LABEL_17;
            }

            v19 = *(a1 + 56);
            v15 = *v14;
            if (v19 >= *v14)
            {
              if (v15 == *(a1 + 60))
              {
                goto LABEL_16;
              }

LABEL_17:
              *v14 = v15 + 1;
              v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_StorageActionGroup>(*(a1 + 48));
              v17 = *(a1 + 56);
              v18 = *(a1 + 64) + 8 * v17;
              *(a1 + 56) = v17 + 1;
              *(v18 + 8) = v16;
              v13 = v41;
            }

            else
            {
              *(a1 + 56) = v19 + 1;
              v16 = *&v14[2 * v19 + 2];
            }

            v12 = sub_276F53074(a3, v16, v13);
            v41 = v12;
            if (!v12)
            {
              goto LABEL_67;
            }

            if (*a3 <= v12 || *v12 != 18)
            {
              goto LABEL_58;
            }

            continue;
          }
        }

        if (v8 != 10)
        {
LABEL_51:
          if (v8)
          {
            v34 = (v8 & 7) == 4;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v41 = google::protobuf::internal::UnknownFieldParse();
          if (!v41)
          {
LABEL_67:
            v41 = 0;
            goto LABEL_2;
          }

          goto LABEL_58;
        }

        v23 = (v7 - 1);
        while (2)
        {
          v24 = (v23 + 1);
          v41 = (v23 + 1);
          v25 = *(a1 + 40);
          if (!v25)
          {
LABEL_36:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v25 = *(a1 + 40);
            v26 = *v25;
            goto LABEL_37;
          }

          v30 = *(a1 + 32);
          v26 = *v25;
          if (v30 >= *v25)
          {
            if (v26 == *(a1 + 36))
            {
              goto LABEL_36;
            }

LABEL_37:
            *v25 = v26 + 1;
            v27 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_UnionTransaction>(*(a1 + 24));
            v28 = *(a1 + 32);
            v29 = *(a1 + 40) + 8 * v28;
            *(a1 + 32) = v28 + 1;
            *(v29 + 8) = v27;
            v24 = v41;
          }

          else
          {
            *(a1 + 32) = v30 + 1;
            v27 = *&v25[2 * v30 + 2];
          }

          v23 = sub_276F52FA4(a3, v27, v24);
          v41 = v23;
          if (!v23)
          {
            goto LABEL_67;
          }

          if (*a3 <= v23 || *v23 != 10)
          {
            goto LABEL_58;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_51;
        }

        v5 |= 1u;
        v31 = (v7 + 1);
        LODWORD(v32) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

        v33 = *v31;
        v32 = (v32 + (v33 << 7) - 128);
        if ((v33 & 0x80000000) == 0)
        {
          v31 = (v7 + 2);
LABEL_50:
          v41 = v31;
          *(a1 + 72) = v32;
          goto LABEL_58;
        }

        v39 = google::protobuf::internal::VarintParseSlow32(v7, v32);
        v41 = v39;
        *(a1 + 72) = v40;
        if (!v39)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_51;
        }

        v5 |= 2u;
        v20 = (v7 + 1);
        LODWORD(v21) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v22 = *v20;
        v21 = (v21 + (v22 << 7) - 128);
        if ((v22 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_32:
          v41 = v20;
          *(a1 + 76) = v21;
          goto LABEL_58;
        }

        v37 = google::protobuf::internal::VarintParseSlow32(v7, v21);
        v41 = v37;
        *(a1 + 76) = v38;
        if (!v37)
        {
          goto LABEL_67;
        }
      }

LABEL_58:
      if (sub_276EA4A1C(a3, &v41))
      {
        goto LABEL_2;
      }
    }

    v7 = (v41 + 2);
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

unsigned __int8 *TSWP::UndoTransaction::_InternalSerialize(TSWP::UndoTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSWP::UndoTransaction_UnionTransaction::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 8) + 8 * j + 8);
      *a2 = 18;
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

      a2 = TSWP::UndoTransaction_StorageActionGroup::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 4);
  if (v21)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 18);
    *a2 = 24;
    if (v22 <= 0x7F)
    {
      a2[1] = v22;
      a2 += 2;
      if ((v21 & 2) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_34;
    }

    a2[1] = v22 | 0x80;
    v23 = v22 >> 7;
    if (v22 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v23 | 0x80;
        v26 = v23 >> 7;
        ++a2;
        v27 = v23 >> 14;
        v23 >>= 7;
      }

      while (v27);
      *(a2 - 1) = v26;
      if ((v21 & 2) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_34;
    }

    a2[2] = v23;
    a2 += 3;
  }

  if ((v21 & 2) == 0)
  {
    goto LABEL_47;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 19);
  *a2 = 32;
  if (v24 > 0x7F)
  {
    a2[1] = v24 | 0x80;
    v25 = v24 >> 7;
    if (v24 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v25 | 0x80;
        v28 = v25 >> 7;
        ++a2;
        v29 = v25 >> 14;
        v25 >>= 7;
      }

      while (v29);
      *(a2 - 1) = v28;
    }

    else
    {
      a2[2] = v25;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v24;
    a2 += 2;
  }

LABEL_47:
  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction::ByteSizeLong(TSWP::UndoTransaction *this)
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
      v7 = TSWP::UndoTransaction_UnionTransaction::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSWP::UndoTransaction_StorageActionGroup::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 4);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      v9 += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v9 += ((9 * (__clz(*(this + 19) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TSWP::UndoTransaction::MergeFrom(TSWP::UndoTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction *a2)
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
    this = sub_276EA63A0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_276EA6460(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      *(v3 + 72) = *(a2 + 18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 76) = *(a2 + 19);
    }

    *(v3 + 16) |= v15;
  }

  return this;
}

uint64_t *TSWP::UndoTransaction::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction::Clear(this);

    return TSWP::UndoTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction::CopyFrom(uint64_t *this, const TSWP::UndoTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction::Clear(this);

    return TSWP::UndoTransaction::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::UndoTransaction::IsInitialized(TSWP::UndoTransaction *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSWP::UndoTransaction_UnionTransaction::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = TSWP::UndoTransaction_StorageActionGroup::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
  }

  while (v8);
  return v5;
}

__n128 TSWP::UndoTransaction::InternalSwap(TSWP::UndoTransaction *this, TSWP::UndoTransaction *a2)
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
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  return result;
}

TSWP::UndoTransactionWrapperArchive *TSWP::UndoTransactionWrapperArchive::UndoTransactionWrapperArchive(TSWP::UndoTransactionWrapperArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886022B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransactionWrapperArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886022B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransactionWrapperArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWP::UndoTransactionWrapperArchive *TSWP::UndoTransactionWrapperArchive::UndoTransactionWrapperArchive(TSWP::UndoTransactionWrapperArchive *this, const TSWP::UndoTransactionWrapperArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886022B0;
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

void TSWP::UndoTransactionWrapperArchive::~UndoTransactionWrapperArchive(TSWP::UndoTransactionWrapperArchive *this)
{
  if (this != &TSWP::_UndoTransactionWrapperArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::UndoTransaction::~UndoTransaction(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::UndoTransactionWrapperArchive::~UndoTransactionWrapperArchive(this);

  JUMPOUT(0x277CA3D00);
}