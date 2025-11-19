uint64_t TSD::SmartStrokeArchive::MergeFrom(uint64_t this, const TSD::SmartStrokeArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C9BAA0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80A60];
    }

    this = TSP::ReferenceDictionary::MergeFrom(v6, v8);
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
    *(v3 + 40) = *(a2 + 5);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t TSD::FrameArchive::MergeFrom(uint64_t this, const TSD::FrameArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

uint64_t TSD::PatternedStrokeArchive::MergeFrom(uint64_t this, const TSD::PatternedStrokeArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;

    return google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

void TSD::StrokeArchive::CopyFrom(TSD::StrokeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::StrokeArchive::Clear(this);

    TSD::StrokeArchive::MergeFrom(this, a2);
  }
}

float TSD::StrokeArchive::CopyFrom(TSD::StrokeArchive *this, const TSD::StrokeArchive *a2)
{
  if (a2 != this)
  {
    TSD::StrokeArchive::Clear(this);

    return TSD::StrokeArchive::MergeFrom(this, a2);
  }

  return result;
}

uint64_t TSD::StrokeArchive::IsInitialized(TSD::StrokeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Color::IsInitialized(*(this + 3));
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

  v4 = *(this + 5);
  if ((*(v4 + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::ReferenceDictionary::IsInitialized(*(v4 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TSD::SmartStrokeArchive::IsInitialized(TSD::SmartStrokeArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::ReferenceDictionary::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::StrokeArchive::InternalSwap(TSD::StrokeArchive *this, TSD::StrokeArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  return result;
}

TSP::ReferenceDictionary *TSD::SmartStrokeArchive::clear_parametervalues(TSD::SmartStrokeArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::ReferenceDictionary::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::SmartStrokeArchive *TSD::SmartStrokeArchive::SmartStrokeArchive(TSD::SmartStrokeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885766E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SmartStrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  *(this + 12) = 0;
  return this;
}

TSD::SmartStrokeArchive *TSD::SmartStrokeArchive::SmartStrokeArchive(TSD::SmartStrokeArchive *this, const TSD::SmartStrokeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2885766E8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  v6 = *(a2 + 5);
  *(this + 12) = *(a2 + 12);
  *(this + 5) = v6;
  return this;
}

void TSD::SmartStrokeArchive::~SmartStrokeArchive(TSD::SmartStrokeArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  if (this != &TSD::_SmartStrokeArchive_default_instance_ && *(this + 4))
  {
    v3 = MEMORY[0x277C9B590]();
    MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::SmartStrokeArchive::~SmartStrokeArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::SmartStrokeArchive::default_instance(TSD::SmartStrokeArchive *this)
{
  if (atomic_load_explicit(scc_info_SmartStrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SmartStrokeArchive_default_instance_;
}

google::protobuf::internal *TSD::SmartStrokeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v24) & 1) == 0)
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
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 41)
          {
            v5 |= 4u;
            *(a1 + 40) = *v7;
            v24 = (v7 + 8);
            goto LABEL_38;
          }

          goto LABEL_30;
        }

        if (v8 != 34)
        {
          goto LABEL_30;
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

          v18 = MEMORY[0x277C9BAA0](v17);
          LODWORD(v16) = v18;
          *(a1 + 32) = v18;
          v7 = v24;
        }

        v15 = sub_27680BD6C(a3, v16, v7);
LABEL_37:
        v24 = v15;
        if (!v15)
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
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v15 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_37;
        }

LABEL_30:
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
          sub_27670AF80((a1 + 8));
        }

        v15 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_37;
      }

      if (v10 != 3 || v8 != 24)
      {
        goto LABEL_30;
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
        v24 = v12;
        *(a1 + 48) = v13;
        goto LABEL_38;
      }

      v22 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v24 = v22;
      *(a1 + 48) = v23;
      if (!v22)
      {
LABEL_45:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_38:
      if (sub_27670AF08(a3, &v24))
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

unsigned __int8 *TSD::SmartStrokeArchive::_InternalSerialize(TSD::SmartStrokeArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 12);
    *v4 = 24;
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
        if ((v6 & 2) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v4 = sub_276727B88(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 4);
  *v4 = 34;
  v12 = *(v11 + 10);
  if (v12 > 0x7F)
  {
    v4[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      v13 = v4 + 3;
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
      v4[2] = v14;
      v13 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v12;
    v13 = v4 + 2;
  }

  v4 = TSP::ReferenceDictionary::_InternalSerialize(v11, v13, a3);
  if ((v6 & 4) != 0)
  {
LABEL_28:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v17 = *(this + 5);
    *v4 = 41;
    *(v4 + 1) = v17;
    v4 += 9;
  }

LABEL_31:
  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::SmartStrokeArchive::ByteSizeLong(TSD::SmartStrokeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v4 = 0;
    goto LABEL_15;
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

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = TSP::ReferenceDictionary::ByteSizeLong(*(this + 4));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v4 = v3 + 9;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v4 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::SmartStrokeArchive::MergeFrom(TSD::SmartStrokeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::SmartStrokeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSD::SmartStrokeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SmartStrokeArchive::Clear(this);

    return TSD::SmartStrokeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::SmartStrokeArchive::CopyFrom(uint64_t *this, const TSD::SmartStrokeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SmartStrokeArchive::Clear(this);

    return TSD::SmartStrokeArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSD::SmartStrokeArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
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

TSD::FrameArchive *TSD::FrameArchive::FrameArchive(TSD::FrameArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576798;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FrameArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 8) = 0;
  return this;
}

TSD::FrameArchive *TSD::FrameArchive::FrameArchive(TSD::FrameArchive *this, const TSD::FrameArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288576798;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSD::FrameArchive::~FrameArchive(TSD::FrameArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::FrameArchive::~FrameArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::FrameArchive::default_instance(TSD::FrameArchive *this)
{
  if (atomic_load_explicit(scc_info_FrameArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_FrameArchive_default_instance_;
}

google::protobuf::internal *TSD::FrameArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v15) & 1) == 0)
  {
    while (1)
    {
      v7 = (v15 + 1);
      v8 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v9 - 128));
      v15 = TagFallback;
      if (!TagFallback)
      {
LABEL_28:
        v15 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v14;
LABEL_7:
      if (v8 >> 3 == 3)
      {
        if (v8 == 29)
        {
          v5 |= 2u;
          *(a1 + 32) = *v7;
          v15 = (v7 + 4);
          goto LABEL_23;
        }
      }

      else if (v8 >> 3 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v12 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_22;
      }

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
        sub_27670AF80((a1 + 8));
      }

      v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_22:
      v15 = v12;
      if (!v12)
      {
        goto LABEL_28;
      }

LABEL_23:
      if (sub_27670AF08(a3, &v15))
      {
        goto LABEL_2;
      }
    }

    v7 = (v15 + 2);
LABEL_6:
    v15 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v15;
}

google::protobuf::UnknownFieldSet *TSD::FrameArchive::_InternalSerialize(TSD::FrameArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276727B88(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 8);
    *v4 = 29;
    *(v4 + 1) = v7;
    v4 = (v4 + 5);
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::FrameArchive::ByteSizeLong(TSD::FrameArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSD::FrameArchive::MergeFrom(TSD::FrameArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::FrameArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

TSD::FrameArchive *TSD::FrameArchive::CopyFrom(TSD::FrameArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FrameArchive::Clear(this);

    return TSD::FrameArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::FrameArchive *TSD::FrameArchive::CopyFrom(TSD::FrameArchive *this, const TSD::FrameArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FrameArchive::Clear(this);

    return TSD::FrameArchive::MergeFrom(v4, a2);
  }

  return this;
}

float TSD::FrameArchive::InternalSwap(TSD::FrameArchive *this, TSD::FrameArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  return result;
}

TSD::PatternedStrokeArchive *TSD::PatternedStrokeArchive::PatternedStrokeArchive(TSD::PatternedStrokeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576848;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PatternedStrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  return this;
}

{
  *this = &unk_288576848;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PatternedStrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  return this;
}

TSD::PatternedStrokeArchive *TSD::PatternedStrokeArchive::PatternedStrokeArchive(TSD::PatternedStrokeArchive *this, const TSD::PatternedStrokeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288576848;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

void TSD::PatternedStrokeArchive::~PatternedStrokeArchive(TSD::PatternedStrokeArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::PatternedStrokeArchive::~PatternedStrokeArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::PatternedStrokeArchive::default_instance(TSD::PatternedStrokeArchive *this)
{
  if (atomic_load_explicit(scc_info_PatternedStrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PatternedStrokeArchive_default_instance_;
}

google::protobuf::internal *TSD::PatternedStrokeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  TagFallback = a2;
  while ((sub_27670AF08(a3, &TagFallback) & 1) == 0)
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
    if (v6 == 18)
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
        sub_27670AF80((a1 + 8));
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

const google::protobuf::UnknownFieldSet *TSD::PatternedStrokeArchive::_InternalSerialize(TSD::PatternedStrokeArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 16))
  {
    v4 = sub_276727B88(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(this + 1);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v6 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::PatternedStrokeArchive::ByteSizeLong(TSD::PatternedStrokeArchive *this)
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
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

uint64_t TSD::PatternedStrokeArchive::MergeFrom(TSD::PatternedStrokeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::PatternedStrokeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

TSD::PatternedStrokeArchive *TSD::PatternedStrokeArchive::CopyFrom(TSD::PatternedStrokeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PatternedStrokeArchive::Clear(this);

    return TSD::PatternedStrokeArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::PatternedStrokeArchive *TSD::PatternedStrokeArchive::CopyFrom(TSD::PatternedStrokeArchive *this, const TSD::PatternedStrokeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PatternedStrokeArchive::Clear(this);

    return TSD::PatternedStrokeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::PatternedStrokeArchive::InternalSwap(TSD::PatternedStrokeArchive *this, TSD::PatternedStrokeArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSP::Path *TSD::LineEndArchive::clear_path(TSD::LineEndArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Point *TSD::LineEndArchive::clear_end_point(TSD::LineEndArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::LineEndArchive *TSD::LineEndArchive::LineEndArchive(TSD::LineEndArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885768F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LineEndArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  *(this + 45) = 0;
  return this;
}

TSD::LineEndArchive *TSD::LineEndArchive::LineEndArchive(TSD::LineEndArchive *this, const TSD::LineEndArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2885768F8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  v6 = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  *(this + 12) = v6;
  return this;
}

void TSD::LineEndArchive::~LineEndArchive(TSD::LineEndArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  if (this != &TSD::_LineEndArchive_default_instance_)
  {
    if (*(this + 4))
    {
      v3 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Point::~Point(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::LineEndArchive::~LineEndArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::LineEndArchive::default_instance(TSD::LineEndArchive *this)
{
  if (atomic_load_explicit(scc_info_LineEndArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_LineEndArchive_default_instance_;
}

uint64_t *TSD::LineEndArchive::Clear(uint64_t *this)
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

    goto LABEL_16;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
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

LABEL_16:
  this = TSP::Path::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSP::Point::Clear(*(v1 + 40));
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 52) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::LineEndArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v7 = (v30 + 1);
      v8 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_60;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 16)
          {
            v14 = (v7 + 1);
            v13 = *v7;
            if ((v13 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            v15 = *v14;
            v13 = (v15 << 7) + v13 - 128;
            if (v15 < 0)
            {
              v30 = google::protobuf::internal::VarintParseSlow64(v7, v13);
              if (!v30)
              {
LABEL_60:
                v30 = 0;
                goto LABEL_2;
              }
            }

            else
            {
              v14 = (v7 + 2);
LABEL_22:
              v30 = v14;
            }

            if (v13 > 2)
            {
              sub_27680D340();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 48) = v13;
            }

            goto LABEL_50;
          }

          goto LABEL_42;
        }

        if (v8 != 10)
        {
          goto LABEL_42;
        }

        *(a1 + 16) |= 2u;
        v22 = *(a1 + 32);
        if (!v22)
        {
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = MEMORY[0x277C9BAC0](v23);
          LODWORD(v22) = v24;
          *(a1 + 32) = v24;
          v7 = v30;
        }

        v11 = sub_27680AC5C(a3, v22, v7);
LABEL_49:
        v30 = v11;
        if (!v11)
        {
          goto LABEL_60;
        }

        goto LABEL_50;
      }

      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_42;
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

          v18 = MEMORY[0x277C9BB00](v17);
          LODWORD(v16) = v18;
          *(a1 + 40) = v18;
          v7 = v30;
        }

        v11 = sub_27680AABC(a3, v16, v7);
        goto LABEL_49;
      }

      if (v10 != 4)
      {
        if (v10 == 5 && v8 == 42)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v11 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_49;
        }

LABEL_42:
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
          sub_27670AF80((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_49;
      }

      if (v8 != 32)
      {
        goto LABEL_42;
      }

      v5 |= 0x10u;
      v20 = (v7 + 1);
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = (v7 + 2);
LABEL_35:
        v30 = v20;
        *(a1 + 52) = v19 != 0;
        goto LABEL_50;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v7, v19);
      v30 = v28;
      *(a1 + 52) = v29 != 0;
      if (!v28)
      {
        goto LABEL_60;
      }

LABEL_50:
      if (sub_27670AF08(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v7 = (v30 + 2);
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *TSD::LineEndArchive::_InternalSerialize(TSD::LineEndArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) == 0)
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
        if ((v6 & 4) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 4);
  *v4 = 10;
  v10 = *(v9 + 10);
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

  v4 = TSP::Path::_InternalSerialize(v9, v11, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_30:
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

  v4 = TSP::Point::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 52);
  *v4 = 32;
  v4[1] = v25;
  v4 += 2;
  if (v6)
  {
LABEL_6:
    v4 = sub_276727B88(a3, 5, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_7:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::LineEndArchive::ByteSizeLong(TSP::Path **this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = TSP::Path::ByteSizeLong(this[4]);
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_14:
    v10 = *(this + 12);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v11;
    goto LABEL_18;
  }

  v9 = TSP::Point::ByteSizeLong(this[5]);
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v4 = v3 + ((v2 >> 3) & 2);
LABEL_19:
  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::LineEndArchive::MergeFrom(TSD::LineEndArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::LineEndArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::LineEndArchive::MergeFrom(uint64_t this, const TSD::LineEndArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
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

        goto LABEL_21;
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

      v6 = MEMORY[0x277C9BAC0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D809C8];
    }

    this = TSP::Path::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_21:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C9BB00](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 5))
    {
      v11 = *(a2 + 5);
    }

    else
    {
      v11 = MEMORY[0x277D809F0];
    }

    this = TSP::Point::MergeFrom(v9, v11);
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
      *(v3 + 52) = *(a2 + 52);
      goto LABEL_10;
    }

LABEL_29:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSD::LineEndArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::LineEndArchive::Clear(this);

    return TSD::LineEndArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::LineEndArchive::CopyFrom(uint64_t *this, const TSD::LineEndArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::LineEndArchive::Clear(this);

    return TSD::LineEndArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::LineEndArchive::IsInitialized(TSD::LineEndArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSP::Path::IsInitialized(*(this + 4));
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

  result = TSP::Point::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::LineEndArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LOBYTE(v6) = this[3].n128_u8[4];
  this[3].n128_u8[4] = a2[3].n128_u8[4];
  a2[3].n128_u8[4] = v6;
  return result;
}

TSP::Color *TSD::ShadowArchive::clear_color(TSD::ShadowArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::ShadowArchive *TSD::ShadowArchive::ShadowArchive(TSD::ShadowArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885769A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShadowArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 60) = 1;
  *(this + 8) = 0x40A00000439D8000;
  *(this + 9) = 0x3F80000000000001;
  return this;
}

TSD::ShadowArchive *TSD::ShadowArchive::ShadowArchive(TSD::ShadowArchive *this, const TSD::ShadowArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885769A8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  v7 = *(a2 + 56);
  *(this + 9) = *(a2 + 9);
  *(this + 56) = v7;
  return this;
}

void TSD::ShadowArchive::~ShadowArchive(TSD::ShadowArchive *this)
{
  sub_2767377E0(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ShadowArchive::~ShadowArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *sub_2767377E0(void *result)
{
  if (result != &TSD::_ShadowArchive_default_instance_)
  {
    v1 = result;
    result = result[3];
    if (result)
    {
      TSP::Color::~Color(result);
      result = MEMORY[0x277C9C1D0]();
    }

    v2 = v1[4];
    if (v2)
    {
      sub_2766FFE58((v2 + 8));
      result = MEMORY[0x277C9C1D0](v2, 0x1081C40622C3295);
    }

    v3 = v1[5];
    if (v3)
    {
      sub_2766FFE58((v3 + 8));
      result = MEMORY[0x277C9C1D0](v3, 0x1081C404FE48876);
    }

    v4 = v1[6];
    if (v4)
    {
      sub_2766FFE58((v4 + 8));

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::ShadowArchive::default_instance(TSD::ShadowArchive *this)
{
  if (atomic_load_explicit(scc_info_ShadowArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ShadowArchive_default_instance_;
}

uint64_t *TSD::ShadowArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      this = TSP::Color::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      v3 = v1[4];
      v4 = *(v3 + 8);
      this = (v3 + 8);
      if (v4)
      {
        this = sub_27670B144(this);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = TSD::ContactShadowArchive::Clear(v1[5]);
    }

    if ((v2 & 8) != 0)
    {
      v5 = v1[6];
      v6 = *(v5 + 8);
      this = (v5 + 8);
      *(this + 4) = 1058642330;
      *(this + 2) = 0;
      if (v6)
      {
        this = sub_27670B144(this);
      }
    }
  }

  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 14) = 0;
    *(v1 + 60) = 1;
    v1[8] = 0x40A00000439D8000;
  }

  if ((v2 & 0x300) != 0)
  {
    v1[9] = 0x3F80000000000001;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 1;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_27670B144(v7);
  }

  return this;
}

uint64_t *TSD::DropShadowArchive::Clear(TSD::DropShadowArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

uint64_t *TSD::ContactShadowArchive::Clear(TSD::ContactShadowArchive *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0x3E4CCCCD00000000;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

uint64_t *TSD::CurvedShadowArchive::Clear(TSD::CurvedShadowArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 1058642330;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::ShadowArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v43 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v43) & 1) == 0)
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
        goto LABEL_91;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 > 7)
        {
          if (v10 == 8)
          {
            if (v8 != 66)
            {
              goto LABEL_73;
            }

            *(a1 + 16) |= 2u;
            v30 = *(a1 + 32);
            if (!v30)
            {
              v31 = *(a1 + 8);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v32 = google::protobuf::Arena::CreateMaybeMessage<TSD::DropShadowArchive>(v31);
              LODWORD(v30) = v32;
              *(a1 + 32) = v32;
              v7 = v43;
            }

            v15 = sub_27680BE3C(a3, v30, v7);
          }

          else if (v10 == 9)
          {
            if (v8 != 74)
            {
              goto LABEL_73;
            }

            *(a1 + 16) |= 4u;
            v36 = *(a1 + 40);
            if (!v36)
            {
              v37 = *(a1 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v36 = google::protobuf::Arena::CreateMaybeMessage<TSD::ContactShadowArchive>(v37);
              *(a1 + 40) = v36;
              v7 = v43;
            }

            v15 = sub_27680BF0C(a3, v36, v7);
          }

          else
          {
            if (v10 != 10 || v8 != 82)
            {
              goto LABEL_73;
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

              v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::CurvedShadowArchive>(v14);
              *(a1 + 48) = v13;
              v7 = v43;
            }

            v15 = sub_27680BFDC(a3, v13, v7);
          }

LABEL_80:
          v43 = v15;
          if (!v15)
          {
            goto LABEL_91;
          }

          goto LABEL_81;
        }

        if (v10 != 6)
        {
          if (v10 == 7 && v8 == 56)
          {
            v19 = (v7 + 1);
            v18 = *v7;
            if ((v18 & 0x8000000000000000) == 0)
            {
              goto LABEL_37;
            }

            v20 = *v19;
            v18 = (v20 << 7) + v18 - 128;
            if (v20 < 0)
            {
              v43 = google::protobuf::internal::VarintParseSlow64(v7, v18);
              if (!v43)
              {
                goto LABEL_91;
              }
            }

            else
            {
              v19 = (v7 + 2);
LABEL_37:
              v43 = v19;
            }

            if (v18 > 2)
            {
              sub_27680D400();
            }

            else
            {
              *(a1 + 16) |= 0x10u;
              *(a1 + 56) = v18;
            }

            goto LABEL_81;
          }

          goto LABEL_73;
        }

        if (v8 != 48)
        {
          goto LABEL_73;
        }

        v5 |= 0x20u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_52:
          v43 = v27;
          *(a1 + 60) = v26 != 0;
          goto LABEL_81;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v26);
        v43 = v39;
        *(a1 + 60) = v40 != 0;
        if (!v39)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_73;
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

              v25 = MEMORY[0x277C9BAF0](v24);
              LODWORD(v23) = v25;
              *(a1 + 24) = v25;
              v7 = v43;
            }

            v15 = sub_27680B3AC(a3, v23, v7);
            goto LABEL_80;
          }

          if (v10 == 2 && v8 == 21)
          {
            v17 = *v7;
            v11 = (v7 + 4);
            v5 |= 0x40u;
            *(a1 + 64) = v17;
            goto LABEL_55;
          }

LABEL_73:
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
            sub_27670AF80((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_80;
        }

        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v29 = *v7;
            v11 = (v7 + 4);
            v5 |= 0x80u;
            *(a1 + 68) = v29;
            goto LABEL_55;
          }

          goto LABEL_73;
        }

        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 45)
          {
            v12 = *v7;
            v11 = (v7 + 4);
            v5 |= 0x200u;
            *(a1 + 76) = v12;
LABEL_55:
            v43 = v11;
            goto LABEL_81;
          }

          goto LABEL_73;
        }

        if (v8 != 32)
        {
          goto LABEL_73;
        }

        v5 |= 0x100u;
        v34 = (v7 + 1);
        LODWORD(v33) = *v7;
        if ((v33 & 0x80) == 0)
        {
          goto LABEL_66;
        }

        v35 = *v34;
        v33 = (v33 + (v35 << 7) - 128);
        if ((v35 & 0x80000000) == 0)
        {
          v34 = (v7 + 2);
LABEL_66:
          v43 = v34;
          *(a1 + 72) = v33;
          goto LABEL_81;
        }

        v41 = google::protobuf::internal::VarintParseSlow64(v7, v33);
        v43 = v41;
        *(a1 + 72) = v42;
        if (!v41)
        {
LABEL_91:
          v43 = 0;
          goto LABEL_2;
        }
      }

LABEL_81:
      if (sub_27670AF08(a3, &v43))
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

unsigned __int8 *TSD::ShadowArchive::_InternalSerialize(TSD::ShadowArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
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
          v17 = v13 >> 7;
          ++v11;
          v18 = v13 >> 14;
          v13 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
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

    a2 = TSP::Color::_InternalSerialize(v9, v11, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_3:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 16);
  *a2 = 21;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v6 & 0x80) == 0)
  {
LABEL_4:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_5;
    }

LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 18);
    *a2 = 32;
    if (v21 > 0x7F)
    {
      a2[1] = v21 | 0x80;
      v22 = v21 >> 7;
      if (v21 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v22 | 0x80;
          v23 = v22 >> 7;
          ++a2;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
        *(a2 - 1) = v23;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        a2[2] = v22;
        a2 += 3;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      a2[1] = v21;
      a2 += 2;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_33:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 17);
  *a2 = 29;
  *(a2 + 1) = v20;
  a2 += 5;
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_36;
  }

LABEL_5:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_6;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 19);
  *a2 = 45;
  *(a2 + 1) = v25;
  a2 += 5;
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 60);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 2) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_9;
  }

LABEL_53:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 14);
  *a2 = 56;
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
      if ((v6 & 2) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      a2[2] = v28;
      a2 += 3;
      if ((v6 & 2) == 0)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    a2[1] = v27;
    a2 += 2;
    if ((v6 & 2) == 0)
    {
      goto LABEL_64;
    }
  }

LABEL_9:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 4);
  *a2 = 66;
  v8 = *(v7 + 16);
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v12 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++a2;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(a2 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

  v16 = *(v7 + 8);
  if (v16)
  {
    a2 = google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

LABEL_64:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 5);
    *a2 = 74;
    v32 = *(v31 + 5);
    if (v32 > 0x7F)
    {
      a2[1] = v32 | 0x80;
      v34 = v32 >> 7;
      if (v32 >> 14)
      {
        v33 = a2 + 3;
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
        a2[2] = v34;
        v33 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v32;
      v33 = a2 + 2;
    }

    a2 = TSD::ContactShadowArchive::_InternalSerialize(v31, v33, a3, a4);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 6);
    *a2 = 82;
    v38 = *(v37 + 5);
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v40 = v38 >> 7;
      if (v38 >> 14)
      {
        v39 = a2 + 3;
        do
        {
          *(v39 - 1) = v40 | 0x80;
          v41 = v40 >> 7;
          ++v39;
          v42 = v40 >> 14;
          v40 >>= 7;
        }

        while (v42);
        *(v39 - 1) = v41;
      }

      else
      {
        a2[2] = v40;
        v39 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v38;
      v39 = a2 + 2;
    }

    a2 = TSD::CurvedShadowArchive::_InternalSerialize(v37, v39, a3, a4);
  }

  v43 = *(this + 1);
  if ((v43 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v43 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ShadowArchive::ByteSizeLong(TSD::ShadowArchive *this)
{
  v2 = *(this + 4);
  if (!*(this + 4))
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (v2)
  {
    v5 = TSP::Color::ByteSizeLong(*(this + 3));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v6 = *(this + 4);
  v8 = *(v6 + 8);
  v7 = v6 + 8;
  if (v8)
  {
    v9 = google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    v9 = 0;
    *(v7 + 8) = 0;
  }

  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  if ((v2 & 4) != 0)
  {
    v10 = TSD::ContactShadowArchive::ByteSizeLong(*(this + 5));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_20;
      }

LABEL_16:
      v12 = *(this + 14);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v13;
      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v11 = TSD::CurvedShadowArchive::ByteSizeLong(*(this + 6));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v14 = v3 + ((v2 >> 4) & 2);
  if ((v2 & 0x40) != 0)
  {
    v14 += 5;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v14 + 5;
  }

  else
  {
    v4 = v14;
  }

LABEL_25:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v15 = *(this + 18);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v16;
    }

    if ((v2 & 0x200) != 0)
    {
      v4 += 5;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSD::ShadowArchive::MergeFrom(TSD::ShadowArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::ShadowArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::ShadowArchive::MergeFrom(TSD::ShadowArchive *this, const TSD::ShadowArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BAF0](v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E8];
      }

      TSP::Color::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v9 = *(this + 4);
      if (!v9)
      {
        v10 = *(this + 1);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::DropShadowArchive>(v10);
        *(this + 4) = v9;
      }

      v11 = *(a2 + 4);
      if (!v11)
      {
        v11 = &TSD::_DropShadowArchive_default_instance_;
      }

      v12 = v11[1];
      if (v12)
      {
        sub_27670B0F8((v9 + 8), (v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }
    }

    if ((v5 & 4) != 0)
    {
      *(this + 4) |= 4u;
      v13 = *(this + 5);
      if (!v13)
      {
        v14 = *(this + 1);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::ContactShadowArchive>(v14);
        *(this + 5) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = &TSD::_ContactShadowArchive_default_instance_;
      }

      TSD::ContactShadowArchive::MergeFrom(v13, v15);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_53;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(this + 4) |= 8u;
    v16 = *(this + 6);
    if (!v16)
    {
      v17 = *(this + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::CurvedShadowArchive>(v17);
      *(this + 6) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = &TSD::_CurvedShadowArchive_default_instance_;
    }

    TSD::CurvedShadowArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_25:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(this + 14) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
LABEL_26:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(this + 60) = *(a2 + 60);
    if ((v5 & 0x40) == 0)
    {
LABEL_27:
      if ((v5 & 0x80) == 0)
      {
LABEL_29:
        *(this + 4) |= v5;
        goto LABEL_30;
      }

LABEL_28:
      *(this + 17) = *(a2 + 17);
      goto LABEL_29;
    }

LABEL_55:
    *(this + 16) = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(this + 18) = *(a2 + 18);
    }

    if ((v5 & 0x200) != 0)
    {
      *(this + 19) = *(a2 + 19);
    }

    *(this + 4) |= v5;
  }
}

uint64_t TSD::DropShadowArchive::MergeFrom(uint64_t this, const TSD::DropShadowArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_27670B0F8((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t TSD::ContactShadowArchive::MergeFrom(uint64_t this, const TSD::ContactShadowArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

float TSD::CurvedShadowArchive::MergeFrom(TSD::CurvedShadowArchive *this, const TSD::CurvedShadowArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 6);
    *(this + 4) |= 1u;
    *(this + 6) = result;
  }

  return result;
}

void TSD::ShadowArchive::CopyFrom(TSD::ShadowArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::ShadowArchive::Clear(this);

    TSD::ShadowArchive::MergeFrom(this, a2);
  }
}

void TSD::ShadowArchive::CopyFrom(TSD::ShadowArchive *this, const TSD::ShadowArchive *a2)
{
  if (a2 != this)
  {
    TSD::ShadowArchive::Clear(this);

    TSD::ShadowArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::ShadowArchive::IsInitialized(TSD::ShadowArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

float TSD::ShadowArchive::InternalSwap(TSD::ShadowArchive *this, TSD::ShadowArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  LOBYTE(v7) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v7;
  v9 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v9;
  v10 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v10;
  LODWORD(v7) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v7;
  result = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = result;
  return result;
}

uint64_t TSD::DropShadowArchive::DropShadowArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288576A58;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288576A58;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSD::DropShadowArchive *TSD::DropShadowArchive::DropShadowArchive(TSD::DropShadowArchive *this, const TSD::DropShadowArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288576A58;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSD::DropShadowArchive::~DropShadowArchive(TSD::DropShadowArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DropShadowArchive::default_instance(TSD::DropShadowArchive *this)
{
  if (atomic_load_explicit(scc_info_DropShadowArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DropShadowArchive_default_instance_;
}

const google::protobuf::UnknownFieldSet *TSD::DropShadowArchive::_InternalSerialize(TSD::DropShadowArchive *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

uint64_t TSD::DropShadowArchive::ByteSizeLong(TSD::DropShadowArchive *this)
{
  v2 = *(this + 8);
  v1 = this + 8;
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(v1 + 2) = 0;
  return 0;
}

void *TSD::DropShadowArchive::MergeFrom(TSD::DropShadowArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t *TSD::DropShadowArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::DropShadowArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSD::DropShadowArchive::CopyFrom(uint64_t *this, const TSD::DropShadowArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_27670B144(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

double TSD::ContactShadowArchive::ContactShadowArchive(void *a1, uint64_t a2)
{
  *a1 = &unk_288576B08;
  a1[1] = a2;
  a1[2] = 0;
  result = 0.0000000134110465;
  a1[3] = 0x3E4CCCCD00000000;
  return result;
}

{
  *a1 = &unk_288576B08;
  a1[1] = a2;
  a1[2] = 0;
  result = 0.0000000134110465;
  a1[3] = 0x3E4CCCCD00000000;
  return result;
}

TSD::ContactShadowArchive *TSD::ContactShadowArchive::ContactShadowArchive(TSD::ContactShadowArchive *this, const TSD::ContactShadowArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576B08;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::ContactShadowArchive::~ContactShadowArchive(TSD::ContactShadowArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ContactShadowArchive::default_instance(TSD::ContactShadowArchive *this)
{
  if (atomic_load_explicit(scc_info_ContactShadowArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ContactShadowArchive_default_instance_;
}

google::protobuf::internal *TSD::ContactShadowArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v17) & 1) == 0)
  {
    while (1)
    {
      v7 = (v17 + 1);
      v8 = *v17;
      if ((*v17 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v9 - 128));
      v17 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_29;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 4)
      {
        if (v8 == 37)
        {
          v13 = *v7;
          v12 = (v7 + 4);
          v5 |= 1u;
          *(a1 + 24) = v13;
LABEL_23:
          v17 = v12;
          goto LABEL_24;
        }
      }

      else if (v8 >> 3 == 2 && v8 == 21)
      {
        v14 = *v7;
        v12 = (v7 + 4);
        v5 |= 2u;
        *(a1 + 28) = v14;
        goto LABEL_23;
      }

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
        sub_27670AF80((a1 + 8));
      }

      v17 = google::protobuf::internal::UnknownFieldParse();
      if (!v17)
      {
LABEL_29:
        v17 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_27670AF08(a3, &v17))
      {
        goto LABEL_2;
      }
    }

    v7 = (v17 + 2);
LABEL_6:
    v17 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v17;
}

unsigned __int8 *TSD::ContactShadowArchive::_InternalSerialize(TSD::ContactShadowArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 7);
    *a2 = 21;
    *(a2 + 1) = v7;
    a2 += 5;
  }

  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 6);
    *a2 = 37;
    *(a2 + 1) = v8;
    a2 += 5;
  }

  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ContactShadowArchive::ByteSizeLong(TSD::ContactShadowArchive *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSD::ContactShadowArchive::MergeFrom(TSD::ContactShadowArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ContactShadowArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

TSD::ContactShadowArchive *TSD::ContactShadowArchive::CopyFrom(TSD::ContactShadowArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContactShadowArchive::Clear(this);

    return TSD::ContactShadowArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::ContactShadowArchive *TSD::ContactShadowArchive::CopyFrom(TSD::ContactShadowArchive *this, const TSD::ContactShadowArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContactShadowArchive::Clear(this);

    return TSD::ContactShadowArchive::MergeFrom(v4, a2);
  }

  return this;
}

float TSD::ContactShadowArchive::InternalSwap(TSD::ContactShadowArchive *this, TSD::ContactShadowArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t TSD::CurvedShadowArchive::CurvedShadowArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288576BB8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 1058642330;
  return result;
}

{
  *result = &unk_288576BB8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 1058642330;
  return result;
}

TSD::CurvedShadowArchive *TSD::CurvedShadowArchive::CurvedShadowArchive(TSD::CurvedShadowArchive *this, const TSD::CurvedShadowArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576BB8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSD::CurvedShadowArchive::~CurvedShadowArchive(TSD::CurvedShadowArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::CurvedShadowArchive::default_instance(TSD::CurvedShadowArchive *this)
{
  if (atomic_load_explicit(scc_info_CurvedShadowArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_CurvedShadowArchive_default_instance_;
}

google::protobuf::internal *TSD::CurvedShadowArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 13)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 4);
        v5 = 1;
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
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::CurvedShadowArchive::_InternalSerialize(TSD::CurvedShadowArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::CurvedShadowArchive::ByteSizeLong(TSD::CurvedShadowArchive *this)
{
  if (*(this + 16))
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::CurvedShadowArchive::MergeFrom(TSD::CurvedShadowArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::CurvedShadowArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::CurvedShadowArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    LODWORD(p_var1[2].var0) = 1058642330;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::CurvedShadowArchive::MergeFrom(this, lpsrc);
  }
}

float TSD::CurvedShadowArchive::CopyFrom(TSD::CurvedShadowArchive *this, const TSD::CurvedShadowArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 1058642330;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::CurvedShadowArchive::MergeFrom(this, a2);
  }

  return result;
}

float TSD::CurvedShadowArchive::InternalSwap(TSD::CurvedShadowArchive *this, TSD::CurvedShadowArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

uint64_t TSD::ReflectionArchive::ReflectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288576C68;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 1056964608;
  return result;
}

{
  *result = &unk_288576C68;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 1056964608;
  return result;
}

TSD::ReflectionArchive *TSD::ReflectionArchive::ReflectionArchive(TSD::ReflectionArchive *this, const TSD::ReflectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576C68;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSD::ReflectionArchive::~ReflectionArchive(TSD::ReflectionArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ReflectionArchive::default_instance(TSD::ReflectionArchive *this)
{
  if (atomic_load_explicit(scc_info_ReflectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ReflectionArchive_default_instance_;
}

uint64_t *TSD::ReflectionArchive::Clear(TSD::ReflectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 1056964608;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::ReflectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 13)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 4);
        v5 = 1;
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
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::ReflectionArchive::_InternalSerialize(TSD::ReflectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ReflectionArchive::ByteSizeLong(TSD::ReflectionArchive *this)
{
  if (*(this + 16))
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::ReflectionArchive::MergeFrom(TSD::ReflectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::ReflectionArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

float TSD::ReflectionArchive::MergeFrom(TSD::ReflectionArchive *this, const TSD::ReflectionArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 6);
    *(this + 4) |= 1u;
    *(this + 6) = result;
  }

  return result;
}

void TSD::ReflectionArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    LODWORD(p_var1[2].var0) = 1056964608;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::ReflectionArchive::MergeFrom(this, lpsrc);
  }
}

float TSD::ReflectionArchive::CopyFrom(TSD::ReflectionArchive *this, const TSD::ReflectionArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 1056964608;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::ReflectionArchive::MergeFrom(this, a2);
  }

  return result;
}

float TSD::ReflectionArchive::InternalSwap(TSD::ReflectionArchive *this, TSD::ReflectionArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

double TSD::ImageAdjustmentsArchive::ImageAdjustmentsArchive(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288576D18;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 62) = 0;
  *(a1 + 72) = 1065353216;
  return result;
}

{
  *a1 = &unk_288576D18;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 62) = 0;
  *(a1 + 72) = 1065353216;
  return result;
}

TSD::ImageAdjustmentsArchive *TSD::ImageAdjustmentsArchive::ImageAdjustmentsArchive(TSD::ImageAdjustmentsArchive *this, const TSD::ImageAdjustmentsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576D18;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  *(this + 18) = *(a2 + 18);
  *(this + 56) = v8;
  *(this + 40) = v7;
  *(this + 24) = v6;
  return this;
}

void TSD::ImageAdjustmentsArchive::~ImageAdjustmentsArchive(TSD::ImageAdjustmentsArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ImageAdjustmentsArchive::default_instance(TSD::ImageAdjustmentsArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageAdjustmentsArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageAdjustmentsArchive_default_instance_;
}

uint64_t *TSD::ImageAdjustmentsArchive::Clear(TSD::ImageAdjustmentsArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
  }

  if ((v1 & 0x3F00) != 0)
  {
    *(this + 62) = 0;
    *(this + 7) = 0;
    *(this + 18) = 1065353216;
  }

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v3)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::ImageAdjustmentsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v36) & 1) == 0)
  {
    while (1)
    {
      v7 = (v36 + 1);
      v8 = *v36;
      if (*v36 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v9 - 128));
          v36 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_60;
          }

          v7 = TagFallback;
          v8 = v13;
          goto LABEL_7;
        }

        v7 = (v36 + 2);
      }

      v36 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 13)
          {
            goto LABEL_47;
          }

          v11 = *v7;
          v10 = (v7 + 4);
          v5 |= 1u;
          *(a1 + 24) = v11;
          goto LABEL_44;
        case 2u:
          if (v8 != 21)
          {
            goto LABEL_47;
          }

          v23 = *v7;
          v10 = (v7 + 4);
          v5 |= 2u;
          *(a1 + 28) = v23;
          goto LABEL_44;
        case 3u:
          if (v8 != 29)
          {
            goto LABEL_47;
          }

          v20 = *v7;
          v10 = (v7 + 4);
          v5 |= 4u;
          *(a1 + 32) = v20;
          goto LABEL_44;
        case 4u:
          if (v8 != 37)
          {
            goto LABEL_47;
          }

          v21 = *v7;
          v10 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 36) = v21;
          goto LABEL_44;
        case 5u:
          if (v8 != 45)
          {
            goto LABEL_47;
          }

          v15 = *v7;
          v10 = (v7 + 4);
          v5 |= 0x10u;
          *(a1 + 40) = v15;
          goto LABEL_44;
        case 6u:
          if (v8 != 53)
          {
            goto LABEL_47;
          }

          v24 = *v7;
          v10 = (v7 + 4);
          v5 |= 0x20u;
          *(a1 + 44) = v24;
          goto LABEL_44;
        case 7u:
          if (v8 != 61)
          {
            goto LABEL_47;
          }

          v28 = *v7;
          v10 = (v7 + 4);
          v5 |= 0x40u;
          *(a1 + 48) = v28;
          goto LABEL_44;
        case 8u:
          if (v8 != 69)
          {
            goto LABEL_47;
          }

          v22 = *v7;
          v10 = (v7 + 4);
          v5 |= 0x80u;
          *(a1 + 52) = v22;
          goto LABEL_44;
        case 9u:
          if (v8 != 77)
          {
            goto LABEL_47;
          }

          v30 = *v7;
          v10 = (v7 + 4);
          v5 |= 0x100u;
          *(a1 + 56) = v30;
          goto LABEL_44;
        case 0xAu:
          if (v8 != 85)
          {
            goto LABEL_47;
          }

          v19 = *v7;
          v10 = (v7 + 4);
          v5 |= 0x200u;
          *(a1 + 60) = v19;
          goto LABEL_44;
        case 0xBu:
          if (v8 != 93)
          {
            goto LABEL_47;
          }

          v29 = *v7;
          v10 = (v7 + 4);
          v5 |= 0x2000u;
          *(a1 + 72) = v29;
          goto LABEL_44;
        case 0xCu:
          if (v8 != 101)
          {
            goto LABEL_47;
          }

          v14 = *v7;
          v10 = (v7 + 4);
          v5 |= 0x400u;
          *(a1 + 64) = v14;
LABEL_44:
          v36 = v10;
          goto LABEL_45;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_47;
          }

          v5 |= 0x800u;
          v17 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_20;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v32 = google::protobuf::internal::VarintParseSlow64(v7, v16);
            v36 = v32;
            *(a1 + 68) = v33 != 0;
            if (!v32)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v17 = (v7 + 2);
LABEL_20:
            v36 = v17;
            *(a1 + 68) = v16 != 0;
          }

          goto LABEL_45;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_47;
          }

          v5 |= 0x1000u;
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v34 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            v36 = v34;
            *(a1 + 69) = v35 != 0;
            if (!v34)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_37:
            v36 = v26;
            *(a1 + 69) = v25 != 0;
          }

          goto LABEL_45;
        default:
LABEL_47:
          if (v8)
          {
            v31 = (v8 & 7) == 4;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v36 = google::protobuf::internal::UnknownFieldParse();
          if (!v36)
          {
LABEL_60:
            v36 = 0;
            goto LABEL_2;
          }

LABEL_45:
          if (sub_27670AF08(a3, &v36))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

unsigned __int8 *TSD::ImageAdjustmentsArchive::_InternalSerialize(TSD::ImageAdjustmentsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 8);
  *a2 = 29;
  *(a2 + 1) = v9;
  a2 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 9);
  *a2 = 37;
  *(a2 + 1) = v10;
  a2 += 5;
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 10);
  *a2 = 45;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 11);
  *a2 = 53;
  *(a2 + 1) = v12;
  a2 += 5;
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 12);
  *a2 = 61;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 13);
  *a2 = 69;
  *(a2 + 1) = v14;
  a2 += 5;
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 14);
  *a2 = 77;
  *(a2 + 1) = v15;
  a2 += 5;
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 15);
  *a2 = 85;
  *(a2 + 1) = v16;
  a2 += 5;
  if ((v6 & 0x2000) == 0)
  {
LABEL_12:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 18);
  *a2 = 93;
  *(a2 + 1) = v17;
  a2 += 5;
  if ((v6 & 0x400) == 0)
  {
LABEL_13:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 16);
  *a2 = 101;
  *(a2 + 1) = v18;
  a2 += 5;
  if ((v6 & 0x800) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 68);
  *a2 = 104;
  a2[1] = v19;
  a2 += 2;
  if ((v6 & 0x1000) != 0)
  {
LABEL_55:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 69);
    *a2 = 112;
    a2[1] = v20;
    a2 += 2;
  }

LABEL_58:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageAdjustmentsArchive::ByteSizeLong(TSD::ImageAdjustmentsArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = 5;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

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
      v2 += 5;
    }

    if ((v1 & 0x20) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x40) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x80) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v1 & 0x3F00) != 0)
  {
    v4 = v3 + 5;
    if ((v1 & 0x100) == 0)
    {
      v4 = v3;
    }

    if ((v1 & 0x200) != 0)
    {
      v4 += 5;
    }

    if ((v1 & 0x400) != 0)
    {
      v4 += 5;
    }

    v5 = v4 + ((v1 >> 11) & 2) + ((v1 >> 10) & 2);
    if ((v1 & 0x2000) != 0)
    {
      v3 = v5 + 5;
    }

    else
    {
      v3 = v5;
    }
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSD::ImageAdjustmentsArchive::MergeFrom(TSD::ImageAdjustmentsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageAdjustmentsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageAdjustmentsArchive::MergeFrom(uint64_t this, const TSD::ImageAdjustmentsArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
    *(v3 + 44) = *(a2 + 11);
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
    *(v3 + 56) = *(a2 + 14);
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

  *(v3 + 60) = *(a2 + 15);
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
  *(v3 + 64) = *(a2 + 16);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

LABEL_36:
    *(v3 + 69) = *(a2 + 69);
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_35:
  *(v3 + 68) = *(a2 + 68);
  if ((v5 & 0x1000) != 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  if ((v5 & 0x2000) != 0)
  {
LABEL_21:
    *(v3 + 72) = *(a2 + 18);
  }

LABEL_22:
  *(v3 + 16) |= v5;
  return this;
}

TSD::ImageAdjustmentsArchive *TSD::ImageAdjustmentsArchive::CopyFrom(TSD::ImageAdjustmentsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageAdjustmentsArchive::Clear(this);

    return TSD::ImageAdjustmentsArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::ImageAdjustmentsArchive *TSD::ImageAdjustmentsArchive::CopyFrom(TSD::ImageAdjustmentsArchive *this, const TSD::ImageAdjustmentsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageAdjustmentsArchive::Clear(this);

    return TSD::ImageAdjustmentsArchive::MergeFrom(v4, a2);
  }

  return this;
}

float TSD::ImageAdjustmentsArchive::InternalSwap(TSD::ImageAdjustmentsArchive *this, TSD::ImageAdjustmentsArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  LODWORD(v9) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v9;
  LOWORD(v9) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v9;
  result = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = result;
  return result;
}

TSD::ShapeStylePropertiesArchive *TSD::ShapeStylePropertiesArchive::ShapeStylePropertiesArchive(TSD::ShapeStylePropertiesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576DC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
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
  *this = &unk_288576DC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ShapeStylePropertiesArchive *TSD::ShapeStylePropertiesArchive::ShapeStylePropertiesArchive(TSD::ShapeStylePropertiesArchive *this, const TSD::ShapeStylePropertiesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576DC8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 18) = *(a2 + 18);
  return this;
}

void TSD::ShapeStylePropertiesArchive::~ShapeStylePropertiesArchive(TSD::ShapeStylePropertiesArchive *this)
{
  sub_27673B1F0(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ShapeStylePropertiesArchive::~ShapeStylePropertiesArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_27673B1F0(uint64_t *result)
{
  if (result != &TSD::_ShapeStylePropertiesArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSD::FillArchive::~FillArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSD::StrokeArchive::~StrokeArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::ShadowArchive::~ShadowArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_2766FFE58((v5 + 8));
      MEMORY[0x277C9C1D0](v5, 0x1081C40E1DA5700);
    }

    v6 = v1[7];
    if (v6)
    {
      TSD::LineEndArchive::~LineEndArchive(v6);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[8];
    if (result)
    {
      TSD::LineEndArchive::~LineEndArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ShapeStylePropertiesArchive::default_instance(TSD::ShapeStylePropertiesArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ShapeStylePropertiesArchive_default_instance_;
}

uint64_t *TSD::ShapeStylePropertiesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_16;
  }

  if (v2)
  {
    this = TSD::FillArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSD::StrokeArchive::Clear(v1[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v3 = v1[6];
    v4 = *(v3 + 8);
    this = (v3 + 8);
    *(this + 4) = 1056964608;
    *(this + 2) = 0;
    if (v4)
    {
      this = sub_27670B144(this);
    }

    goto LABEL_12;
  }

LABEL_9:
  this = TSD::ShadowArchive::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x10) != 0)
  {
    this = TSD::LineEndArchive::Clear(v1[7]);
  }

  if ((v2 & 0x20) != 0)
  {
    this = TSD::LineEndArchive::Clear(v1[8]);
  }

LABEL_16:
  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 16) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_27670B144(v5);
  }

  return this;
}

google::protobuf::internal *TSD::ShapeStylePropertiesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v27) & 1) == 0)
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
        goto LABEL_70;
      }

      v7 = TagFallback;
      v8 = v18;
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

              v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v20);
              *(a1 + 24) = v19;
              v7 = v27;
            }

            v13 = sub_276808E5C(a3, v19, v7);
            goto LABEL_66;
          }
        }

        else if (v10 == 2)
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

              v24 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokeArchive>(v25);
              *(a1 + 32) = v24;
              v7 = v27;
            }

            v13 = sub_27680919C(a3, v24, v7);
            goto LABEL_66;
          }
        }

        else if (v10 == 3 && v8 == 29)
        {
          v5 |= 0x40u;
          *(a1 + 72) = *v7;
          v27 = (v7 + 4);
          goto LABEL_67;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 16) |= 0x10u;
            v15 = *(a1 + 56);
            if (!v15)
            {
              v23 = *(a1 + 8);
              if (v23)
              {
                v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v23);
              *(a1 + 56) = v15;
LABEL_51:
              v7 = v27;
            }

LABEL_52:
            v13 = sub_276808F2C(a3, v15, v7);
            goto LABEL_66;
          }
        }

        else if (v10 == 7 && v8 == 58)
        {
          *(a1 + 16) |= 0x20u;
          v15 = *(a1 + 64);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v16);
            *(a1 + 64) = v15;
            goto LABEL_51;
          }

          goto LABEL_52;
        }
      }

      else if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v21 = *(a1 + 40);
          if (!v21)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v22);
            *(a1 + 40) = v21;
            v7 = v27;
          }

          v13 = sub_2768090CC(a3, v21, v7);
          goto LABEL_66;
        }
      }

      else if (v10 == 5 && v8 == 42)
      {
        *(a1 + 16) |= 8u;
        v11 = *(a1 + 48);
        if (!v11)
        {
          v12 = *(a1 + 8);
          if (v12)
          {
            v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::ReflectionArchive>(v12);
          *(a1 + 48) = v11;
          v7 = v27;
        }

        v13 = sub_276808FFC(a3, v11, v7);
        goto LABEL_66;
      }

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
        sub_27670AF80((a1 + 8));
      }

      v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_66:
      v27 = v13;
      if (!v13)
      {
LABEL_70:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_67:
      if (sub_27670AF08(a3, &v27))
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

unsigned __int8 *TSD::ShapeStylePropertiesArchive::_InternalSerialize(TSD::ShapeStylePropertiesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 11);
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

    a2 = TSD::FillArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
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

  a2 = TSD::StrokeArchive::_InternalSerialize(v13, v15, a3, a4);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 18);
  *a2 = 29;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 5);
  *a2 = 34;
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

  a2 = TSD::ShadowArchive::_InternalSerialize(v20, v22, a3, a4);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_42:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 6);
  *a2 = 42;
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

  a2 = TSD::ReflectionArchive::_InternalSerialize(v26, v28, a3, a4);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 7);
  *a2 = 50;
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

  a2 = TSD::LineEndArchive::_InternalSerialize(v32, v34, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_62:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v38 = *(this + 8);
    *a2 = 58;
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

    a2 = TSD::LineEndArchive::_InternalSerialize(v38, v40, a3);
  }

LABEL_72:
  v44 = *(this + 1);
  if ((v44 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v44 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ShapeStylePropertiesArchive::ByteSizeLong(TSD::ShapeStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v5 = TSD::FillArchive::ByteSizeLong(*(this + 3));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = TSD::StrokeArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v9 = TSD::ShadowArchive::ByteSizeLong(*(this + 5));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v10 = TSD::ReflectionArchive::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v11 = TSD::LineEndArchive::ByteSizeLong(*(this + 7));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v7 = TSD::LineEndArchive::ByteSizeLong(*(this + 8));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0x40) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

LABEL_16:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSD::ShapeStylePropertiesArchive::MergeFrom(TSD::ShapeStylePropertiesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::ShapeStylePropertiesArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::ShapeStylePropertiesArchive::MergeFrom(TSD::ShapeStylePropertiesArchive *this, const TSD::ShapeStylePropertiesArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_FillArchive_default_instance_;
      }

      TSD::FillArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_25;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokeArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSD::_StrokeArchive_default_instance_;
    }

    TSD::StrokeArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    }

LABEL_25:
    *(this + 4) |= 4u;
    v12 = *(this + 5);
    if (!v12)
    {
      v13 = *(this + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v13);
      *(this + 5) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSD::_ShadowArchive_default_instance_;
    }

    TSD::ShadowArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_41:
      if ((v5 & 0x10) != 0)
      {
        *(this + 4) |= 0x10u;
        v18 = *(this + 7);
        if (!v18)
        {
          v19 = *(this + 1);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v19);
          *(this + 7) = v18;
        }

        if (*(a2 + 7))
        {
          v20 = *(a2 + 7);
        }

        else
        {
          v20 = &TSD::_LineEndArchive_default_instance_;
        }

        TSD::LineEndArchive::MergeFrom(v18, v20);
        if ((v5 & 0x20) == 0)
        {
LABEL_43:
          if ((v5 & 0x40) == 0)
          {
LABEL_45:
            *(this + 4) |= v5;
            return;
          }

LABEL_44:
          *(this + 18) = *(a2 + 18);
          goto LABEL_45;
        }
      }

      else if ((v5 & 0x20) == 0)
      {
        goto LABEL_43;
      }

      *(this + 4) |= 0x20u;
      v21 = *(this + 8);
      if (!v21)
      {
        v22 = *(this + 1);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = google::protobuf::Arena::CreateMaybeMessage<TSD::LineEndArchive>(v22);
        *(this + 8) = v21;
      }

      if (*(a2 + 8))
      {
        v23 = *(a2 + 8);
      }

      else
      {
        v23 = &TSD::_LineEndArchive_default_instance_;
      }

      TSD::LineEndArchive::MergeFrom(v21, v23);
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_33:
    *(this + 4) |= 8u;
    v15 = *(this + 6);
    if (!v15)
    {
      v16 = *(this + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::ReflectionArchive>(v16);
      *(this + 6) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSD::_ReflectionArchive_default_instance_;
    }

    TSD::ReflectionArchive::MergeFrom(v15, v17);
    goto LABEL_41;
  }
}

void TSD::ShapeStylePropertiesArchive::CopyFrom(TSD::ShapeStylePropertiesArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::ShapeStylePropertiesArchive::Clear(this);

    TSD::ShapeStylePropertiesArchive::MergeFrom(this, a2);
  }
}

void TSD::ShapeStylePropertiesArchive::CopyFrom(TSD::ShapeStylePropertiesArchive *this, const TSD::ShapeStylePropertiesArchive *a2)
{
  if (a2 != this)
  {
    TSD::ShapeStylePropertiesArchive::Clear(this);

    TSD::ShapeStylePropertiesArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::ShapeStylePropertiesArchive::IsInitialized(TSD::ShapeStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSD::FillArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(this + 5);
    if (*(v4 + 16))
    {
      result = TSP::Color::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(this + 4);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSD::LineEndArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = TSD::LineEndArchive::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::ShapeStylePropertiesArchive::InternalSwap(TSD::ShapeStylePropertiesArchive *this, TSD::ShapeStylePropertiesArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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

TSS::StyleArchive *TSD::ShapeStyleArchive::clear_super(TSD::ShapeStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::ShapeStyleArchive *TSD::ShapeStyleArchive::ShapeStyleArchive(TSD::ShapeStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576E78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_288576E78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSD::ShapeStyleArchive *TSD::ShapeStyleArchive::ShapeStyleArchive(TSD::ShapeStyleArchive *this, const TSD::ShapeStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576E78;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSD::ShapeStyleArchive::~ShapeStyleArchive(TSD::ShapeStyleArchive *this)
{
  if (this != &TSD::_ShapeStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C9B860]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40AC828A93);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSD::ShapeStylePropertiesArchive::~ShapeStylePropertiesArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ShapeStyleArchive::~ShapeStyleArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ShapeStyleArchive::default_instance(TSD::ShapeStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ShapeStyleArchive_default_instance_;
}

uint64_t *TSD::ShapeStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSD::ShapeStylePropertiesArchive::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ShapeStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v26) & 1) == 0)
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
      if (v8 >> 3 == 11)
      {
        if (v8 != 90)
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

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShapeStylePropertiesArchive>(v18);
          *(a1 + 32) = v17;
          v7 = v26;
        }

        v13 = sub_27680C238(a3, v17, v7);
LABEL_36:
        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 10)
      {
        if (v10 == 1 && v8 == 10)
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

            v21 = MEMORY[0x277C9BB30](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_27680C168(a3, v19, v7);
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
            sub_27670AF80((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_36;
      }

      if (v8 != 80)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
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
        v26 = v14;
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v26 = v24;
      *(a1 + 40) = v25;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_27670AF08(a3, &v26))
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

unsigned __int8 *TSD::ShapeStyleArchive::_InternalSerialize(TSD::ShapeStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 3);
    *a2 = 10;
    v11 = *(v10 + 5);
    if (v11 > 0x7F)
    {
      a2[1] = v11 | 0x80;
      v14 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = a2 + 3;
        do
        {
          *(v12 - 1) = v14 | 0x80;
          v19 = v14 >> 7;
          ++v12;
          v20 = v14 >> 14;
          v14 >>= 7;
        }

        while (v20);
        *(v12 - 1) = v19;
      }

      else
      {
        a2[2] = v14;
        v12 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v11;
      v12 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v10, v12, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 10);
  *a2 = 80;
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v22 = v21 >> 7;
    if (v21 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++a2;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(a2 - 1) = v23;
      if ((v6 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v22;
      a2 += 3;
      if ((v6 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v21;
    a2 += 2;
    if ((v6 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 4);
  *a2 = 90;
  v8 = *(v7 + 5);
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v13 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = a2 + 3;
      do
      {
        *(v9 - 1) = v13 | 0x80;
        v15 = v13 >> 7;
        ++v9;
        v16 = v13 >> 14;
        v13 >>= 7;
      }

      while (v16);
      *(v9 - 1) = v15;
    }

    else
    {
      a2[2] = v13;
      v9 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v8;
    v9 = a2 + 2;
  }

  a2 = TSD::ShapeStylePropertiesArchive::_InternalSerialize(v7, v9, a3, a4);
LABEL_20:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ShapeStyleArchive::ByteSizeLong(TSD::ShapeStyleArchive *this)
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

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSD::ShapeStylePropertiesArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSD::ShapeStyleArchive::MergeFrom(TSD::ShapeStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::ShapeStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::ShapeStyleArchive::MergeFrom(TSD::ShapeStyleArchive *this, const TSD::ShapeStyleArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BB30](v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      TSS::StyleArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(this + 4) |= v5;
          return;
        }

LABEL_7:
        *(this + 10) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShapeStylePropertiesArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSD::_ShapeStylePropertiesArchive_default_instance_;
    }

    TSD::ShapeStylePropertiesArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}

void TSD::ShapeStyleArchive::CopyFrom(TSD::ShapeStyleArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::ShapeStyleArchive::Clear(this);

    TSD::ShapeStyleArchive::MergeFrom(this, a2);
  }
}

void TSD::ShapeStyleArchive::CopyFrom(TSD::ShapeStyleArchive *this, const TSD::ShapeStyleArchive *a2)
{
  if (a2 != this)
  {
    TSD::ShapeStyleArchive::Clear(this);

    TSD::ShapeStyleArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::ShapeStyleArchive::IsInitialized(TSD::ShapeStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSD::ShapeStylePropertiesArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ShapeStyleArchive::InternalSwap(TSD::ShapeStyleArchive *this, TSD::ShapeStyleArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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

TSD::MediaStylePropertiesArchive *TSD::MediaStylePropertiesArchive::MediaStylePropertiesArchive(TSD::MediaStylePropertiesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576F28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
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
  *this = &unk_288576F28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::MediaStylePropertiesArchive *TSD::MediaStylePropertiesArchive::MediaStylePropertiesArchive(TSD::MediaStylePropertiesArchive *this, const TSD::MediaStylePropertiesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576F28;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSD::MediaStylePropertiesArchive::~MediaStylePropertiesArchive(TSD::MediaStylePropertiesArchive *this)
{
  if (this != &TSD::_MediaStylePropertiesArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::StrokeArchive::~StrokeArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSD::ShadowArchive::~ShadowArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      sub_2766FFE58((v4 + 8));
      MEMORY[0x277C9C1D0](v4, 0x1081C40E1DA5700);
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::MediaStylePropertiesArchive::~MediaStylePropertiesArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::MediaStylePropertiesArchive::default_instance(TSD::MediaStylePropertiesArchive *this)
{
  if (atomic_load_explicit(scc_info_MediaStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MediaStylePropertiesArchive_default_instance_;
}

uint64_t *TSD::MediaStylePropertiesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    this = TSD::StrokeArchive::Clear(this[3]);
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

  this = TSD::ShadowArchive::Clear(v1[4]);
  if ((v2 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v3 = v1[5];
  v4 = *(v3 + 8);
  this = (v3 + 8);
  *(this + 4) = 1056964608;
  *(this + 2) = 0;
  if (v4)
  {
    this = sub_27670B144(this);
  }

LABEL_10:
  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 10) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_27670B144(v5);
  }

  return this;
}

google::protobuf::internal *TSD::MediaStylePropertiesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
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
LABEL_48:
        v22 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
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

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v18);
              *(a1 + 32) = v17;
              v7 = v22;
            }

            v14 = sub_2768090CC(a3, v17, v7);
            goto LABEL_42;
          }
        }

        else if (v10 == 4 && v8 == 34)
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

            v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::ReflectionArchive>(v13);
            *(a1 + 40) = v12;
            v7 = v22;
          }

          v14 = sub_276808FFC(a3, v12, v7);
          goto LABEL_42;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokeArchive>(v16);
            *(a1 + 24) = v15;
            v7 = v22;
          }

          v14 = sub_27680919C(a3, v15, v7);
          goto LABEL_42;
        }
      }

      else if (v10 == 2 && v8 == 21)
      {
        v5 |= 8u;
        *(a1 + 48) = *v7;
        v22 = (v7 + 4);
        goto LABEL_43;
      }

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
        sub_27670AF80((a1 + 8));
      }

      v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_42:
      v22 = v14;
      if (!v14)
      {
        goto LABEL_48;
      }

LABEL_43:
      if (sub_27670AF08(a3, &v22))
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

unsigned __int8 *TSD::MediaStylePropertiesArchive::_InternalSerialize(TSD::MediaStylePropertiesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
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

    a2 = TSD::StrokeArchive::_InternalSerialize(v7, v9, a3, a4);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 12);
  *a2 = 21;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 4);
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

  a2 = TSD::ShadowArchive::_InternalSerialize(v14, v16, a3, a4);
  if ((v6 & 4) != 0)
  {
LABEL_29:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 5);
    *a2 = 34;
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

    a2 = TSD::ReflectionArchive::_InternalSerialize(v20, v22, a3, a4);
  }

LABEL_39:
  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v26 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::MediaStylePropertiesArchive::ByteSizeLong(TSD::MediaStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v4 = 0;
    goto LABEL_13;
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

  v5 = TSD::StrokeArchive::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSD::ShadowArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSD::ReflectionArchive::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 8) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

LABEL_13:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSD::MediaStylePropertiesArchive::MergeFrom(TSD::MediaStylePropertiesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::MediaStylePropertiesArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::MediaStylePropertiesArchive::MergeFrom(TSD::MediaStylePropertiesArchive *this, const TSD::MediaStylePropertiesArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokeArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_StrokeArchive_default_instance_;
      }

      TSD::StrokeArchive::MergeFrom(v6, v8);
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

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSD::_ShadowArchive_default_instance_;
    }

    TSD::ShadowArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(this + 4) |= v5;
        return;
      }

LABEL_8:
      *(this + 12) = *(a2 + 12);
      goto LABEL_9;
    }

LABEL_27:
    *(this + 4) |= 4u;
    v12 = *(this + 5);
    if (!v12)
    {
      v13 = *(this + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::ReflectionArchive>(v13);
      *(this + 5) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSD::_ReflectionArchive_default_instance_;
    }

    TSD::ReflectionArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }
}

void TSD::MediaStylePropertiesArchive::CopyFrom(TSD::MediaStylePropertiesArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::MediaStylePropertiesArchive::Clear(this);

    TSD::MediaStylePropertiesArchive::MergeFrom(this, a2);
  }
}

void TSD::MediaStylePropertiesArchive::CopyFrom(TSD::MediaStylePropertiesArchive *this, const TSD::MediaStylePropertiesArchive *a2)
{
  if (a2 != this)
  {
    TSD::MediaStylePropertiesArchive::Clear(this);

    TSD::MediaStylePropertiesArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::MediaStylePropertiesArchive::IsInitialized(TSD::MediaStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 3));
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

  v4 = *(this + 4);
  if ((*(v4 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(v4 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::MediaStylePropertiesArchive::InternalSwap(TSD::MediaStylePropertiesArchive *this, TSD::MediaStylePropertiesArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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

TSS::StyleArchive *TSD::MediaStyleArchive::clear_super(TSD::MediaStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::MediaStyleArchive *TSD::MediaStyleArchive::MediaStyleArchive(TSD::MediaStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576FD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_288576FD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSD::MediaStyleArchive *TSD::MediaStyleArchive::MediaStyleArchive(TSD::MediaStyleArchive *this, const TSD::MediaStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576FD8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSD::MediaStyleArchive::~MediaStyleArchive(TSD::MediaStyleArchive *this)
{
  if (this != &TSD::_MediaStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C9B860]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40AC828A93);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSD::MediaStylePropertiesArchive::~MediaStylePropertiesArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::MediaStyleArchive::~MediaStyleArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::MediaStyleArchive::default_instance(TSD::MediaStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_MediaStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MediaStyleArchive_default_instance_;
}

uint64_t *TSD::MediaStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSD::MediaStylePropertiesArchive::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::MediaStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v26) & 1) == 0)
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
      if (v8 >> 3 == 11)
      {
        if (v8 != 90)
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

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::MediaStylePropertiesArchive>(v18);
          *(a1 + 32) = v17;
          v7 = v26;
        }

        v13 = sub_27680C308(a3, v17, v7);
LABEL_36:
        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 10)
      {
        if (v10 == 1 && v8 == 10)
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

            v21 = MEMORY[0x277C9BB30](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_27680C168(a3, v19, v7);
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
            sub_27670AF80((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_36;
      }

      if (v8 != 80)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
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
        v26 = v14;
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v26 = v24;
      *(a1 + 40) = v25;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_27670AF08(a3, &v26))
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

unsigned __int8 *TSD::MediaStyleArchive::_InternalSerialize(TSD::MediaStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 3);
    *a2 = 10;
    v11 = *(v10 + 5);
    if (v11 > 0x7F)
    {
      a2[1] = v11 | 0x80;
      v14 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = a2 + 3;
        do
        {
          *(v12 - 1) = v14 | 0x80;
          v19 = v14 >> 7;
          ++v12;
          v20 = v14 >> 14;
          v14 >>= 7;
        }

        while (v20);
        *(v12 - 1) = v19;
      }

      else
      {
        a2[2] = v14;
        v12 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v11;
      v12 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v10, v12, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 10);
  *a2 = 80;
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v22 = v21 >> 7;
    if (v21 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++a2;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(a2 - 1) = v23;
      if ((v6 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v22;
      a2 += 3;
      if ((v6 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v21;
    a2 += 2;
    if ((v6 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 4);
  *a2 = 90;
  v8 = *(v7 + 5);
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v13 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = a2 + 3;
      do
      {
        *(v9 - 1) = v13 | 0x80;
        v15 = v13 >> 7;
        ++v9;
        v16 = v13 >> 14;
        v13 >>= 7;
      }

      while (v16);
      *(v9 - 1) = v15;
    }

    else
    {
      a2[2] = v13;
      v9 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v8;
    v9 = a2 + 2;
  }

  a2 = TSD::MediaStylePropertiesArchive::_InternalSerialize(v7, v9, a3, a4);
LABEL_20:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::MediaStyleArchive::ByteSizeLong(TSD::MediaStyleArchive *this)
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

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSD::MediaStylePropertiesArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSD::MediaStyleArchive::MergeFrom(TSD::MediaStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::MediaStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::MediaStyleArchive::MergeFrom(TSD::MediaStyleArchive *this, const TSD::MediaStyleArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BB30](v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      TSS::StyleArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(this + 4) |= v5;
          return;
        }

LABEL_7:
        *(this + 10) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::MediaStylePropertiesArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSD::_MediaStylePropertiesArchive_default_instance_;
    }

    TSD::MediaStylePropertiesArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}

void TSD::MediaStyleArchive::CopyFrom(TSD::MediaStyleArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::MediaStyleArchive::Clear(this);

    TSD::MediaStyleArchive::MergeFrom(this, a2);
  }
}

void TSD::MediaStyleArchive::CopyFrom(TSD::MediaStyleArchive *this, const TSD::MediaStyleArchive *a2)
{
  if (a2 != this)
  {
    TSD::MediaStyleArchive::Clear(this);

    TSD::MediaStyleArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::MediaStyleArchive::IsInitialized(TSD::MediaStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSD::MediaStylePropertiesArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::MediaStyleArchive::InternalSwap(TSD::MediaStyleArchive *this, TSD::MediaStyleArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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

uint64_t TSD::ThemePresetsArchive::clear_line_style_presets(uint64_t this)
{
  v1 = *(this + 96);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 104) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 96) = 0;
  }

  return this;
}

uint64_t TSD::ThemePresetsArchive::clear_shape_style_presets(uint64_t this)
{
  v1 = *(this + 120);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 128) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 120) = 0;
  }

  return this;
}

uint64_t TSD::ThemePresetsArchive::clear_textbox_style_presets(uint64_t this)
{
  v1 = *(this + 144);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 152) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 144) = 0;
  }

  return this;
}

uint64_t TSD::ThemePresetsArchive::clear_image_style_presets(uint64_t this)
{
  v1 = *(this + 168);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 176) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 168) = 0;
  }

  return this;
}

uint64_t TSD::ThemePresetsArchive::clear_movie_style_presets(uint64_t this)
{
  v1 = *(this + 192);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 200) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 192) = 0;
  }

  return this;
}

uint64_t TSD::ThemePresetsArchive::clear_drawing_line_style_presets(uint64_t this)
{
  v1 = *(this + 216);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 224) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 216) = 0;
  }

  return this;
}

TSD::ThemePresetsArchive *TSD::ThemePresetsArchive::ThemePresetsArchive(TSD::ThemePresetsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577088;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 5) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = a2;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = a2;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = a2;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 26) = a2;
  *(this + 20) = a2;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = a2;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_27673EB40(_Unwind_Exception *a1)
{
  sub_27676C890(v9);
  sub_27676C890(v8);
  sub_27676C890(v7);
  sub_27676C890(v6);
  sub_27676C890(v5);
  sub_27676C890(v4);
  sub_27676C80C(v3);
  sub_27676C788(v2);
  sub_27676C788(v1);
  _Unwind_Resume(a1);
}

TSD::ThemePresetsArchive *TSD::ThemePresetsArchive::ThemePresetsArchive(TSD::ThemePresetsArchive *this, const TSD::ThemePresetsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_288577088;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_27676C914(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40));
    sub_27676C914(this + 5, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
    v14 = *(this + 12) + v11;
    *(this + 12) = v14;
    v15 = *(this + 7);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v16 = *(a2 + 18);
  if (v16)
  {
    v17 = *(a2 + 10);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 64));
    sub_27676C9D4(this + 8, v18, (v17 + 8), v16, **(this + 10) - *(this + 18));
    v19 = *(this + 18) + v16;
    *(this + 18) = v19;
    v20 = *(this + 10);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v21 = *(a2 + 24);
  if (v21)
  {
    v22 = *(a2 + 13);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 88));
    sub_27676CA94(this + 88, v23, (v22 + 8), v21, **(this + 13) - *(this + 24));
    v24 = *(this + 24) + v21;
    *(this + 24) = v24;
    v25 = *(this + 13);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v26 = *(a2 + 30);
  if (v26)
  {
    v27 = *(a2 + 16);
    v28 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 112));
    sub_27676CA94(this + 112, v28, (v27 + 8), v26, **(this + 16) - *(this + 30));
    v29 = *(this + 30) + v26;
    *(this + 30) = v29;
    v30 = *(this + 16);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v31 = *(a2 + 36);
  if (v31)
  {
    v32 = *(a2 + 19);
    v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 136));
    sub_27676CA94(this + 136, v33, (v32 + 8), v31, **(this + 19) - *(this + 36));
    v34 = *(this + 36) + v31;
    *(this + 36) = v34;
    v35 = *(this + 19);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  v36 = *(a2 + 42);
  if (v36)
  {
    v37 = *(a2 + 22);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 160));
    sub_27676CA94(this + 160, v38, (v37 + 8), v36, **(this + 22) - *(this + 42));
    v39 = *(this + 42) + v36;
    *(this + 42) = v39;
    v40 = *(this + 22);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  v41 = *(a2 + 48);
  if (v41)
  {
    v42 = *(a2 + 25);
    v43 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 184));
    sub_27676CA94(this + 184, v43, (v42 + 8), v41, **(this + 25) - *(this + 48));
    v44 = *(this + 48) + v41;
    *(this + 48) = v44;
    v45 = *(this + 25);
    if (*v45 < v44)
    {
      *v45 = v44;
    }
  }

  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v46 = *(a2 + 54);
  if (v46)
  {
    v47 = *(a2 + 28);
    v48 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 208));
    sub_27676CA94(this + 208, v48, (v47 + 8), v46, **(this + 28) - *(this + 54));
    v49 = *(this + 54) + v46;
    *(this + 54) = v49;
    v50 = *(this + 28);
    if (*v50 < v49)
    {
      *v50 = v49;
    }
  }

  *(this + 58) = 0;
  v51 = *(a2 + 1);
  if (v51)
  {
    sub_27670B0F8(v4, (v51 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_27673F004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  sub_27676C890(v12);
  sub_27676C890(v11);
  sub_27676C890(v16);
  sub_27676C890(v15);
  sub_27676C890(v14);
  sub_27676C890(v13);
  sub_27676C80C(a9);
  sub_27676C788(a10);
  sub_27676C788(a11);
  _Unwind_Resume(a1);
}

void TSD::ThemePresetsArchive::~ThemePresetsArchive(TSD::ThemePresetsArchive *this)
{
  sub_2766FFE58(this + 1);
  sub_27676C890(this + 26);
  sub_27676C890(this + 23);
  sub_27676C890(this + 20);
  sub_27676C890(this + 17);
  sub_27676C890(this + 14);
  sub_27676C890(this + 11);
  sub_27676C80C(this + 8);
  sub_27676C788(this + 5);
  sub_27676C788(this + 2);
}

{
  TSD::ThemePresetsArchive::~ThemePresetsArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::ThemePresetsArchive::default_instance(TSD::ThemePresetsArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ThemePresetsArchive_default_instance_;
}

uint64_t *TSD::ThemePresetsArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::FillArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSD::FillArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      this = TSD::ShadowArchive::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v11 = *(v1 + 96);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 104) + 8);
    do
    {
      v13 = *v12++;
      this = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 96) = 0;
  }

  v14 = *(v1 + 120);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 128) + 8);
    do
    {
      v16 = *v15++;
      this = TSP::Reference::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 120) = 0;
  }

  v17 = *(v1 + 144);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 152) + 8);
    do
    {
      v19 = *v18++;
      this = TSP::Reference::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 144) = 0;
  }

  v20 = *(v1 + 168);
  if (v20 >= 1)
  {
    v21 = (*(v1 + 176) + 8);
    do
    {
      v22 = *v21++;
      this = TSP::Reference::Clear(v22);
      --v20;
    }

    while (v20);
    *(v1 + 168) = 0;
  }

  v23 = *(v1 + 192);
  if (v23 >= 1)
  {
    v24 = (*(v1 + 200) + 8);
    do
    {
      v25 = *v24++;
      this = TSP::Reference::Clear(v25);
      --v23;
    }

    while (v23);
    *(v1 + 192) = 0;
  }

  v26 = *(v1 + 216);
  if (v26 >= 1)
  {
    v27 = (*(v1 + 224) + 8);
    do
    {
      v28 = *v27++;
      this = TSP::Reference::Clear(v28);
      --v26;
    }

    while (v26);
    *(v1 + 216) = 0;
  }

  v30 = *(v1 + 8);
  v29 = (v1 + 8);
  if (v30)
  {

    return sub_27670B144(v29);
  }

  return this;
}

google::protobuf::internal *TSD::ThemePresetsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v92 = a2;
  if ((sub_27670AF08(a3, &v92) & 1) == 0)
  {
    while (1)
    {
      v6 = (v92 + 1);
      v7 = *v92;
      if ((*v92 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v92, (v8 - 128));
      v92 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v47;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 <= 4)
      {
        if (v7 >> 3 <= 2)
        {
          if (v9 != 1)
          {
            if (v9 != 2 || v7 != 18)
            {
              goto LABEL_141;
            }

            v20 = (v6 - 1);
            while (2)
            {
              v21 = (v20 + 1);
              v92 = (v20 + 1);
              v22 = *(a1 + 56);
              if (!v22)
              {
LABEL_34:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
                v22 = *(a1 + 56);
                v23 = *v22;
                goto LABEL_35;
              }

              v27 = *(a1 + 48);
              v23 = *v22;
              if (v27 >= *v22)
              {
                if (v23 == *(a1 + 52))
                {
                  goto LABEL_34;
                }

LABEL_35:
                *v22 = v23 + 1;
                v24 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(*(a1 + 40));
                v25 = *(a1 + 48);
                v26 = *(a1 + 56) + 8 * v25;
                *(a1 + 48) = v25 + 1;
                *(v26 + 8) = v24;
                v21 = v92;
              }

              else
              {
                *(a1 + 48) = v27 + 1;
                v24 = *&v22[2 * v27 + 2];
              }

              v20 = sub_276808E5C(a3, v24, v21);
              v92 = v20;
              if (!v20)
              {
                return 0;
              }

              if (*a3 <= v20 || *v20 != 18)
              {
                goto LABEL_148;
              }

              continue;
            }
          }

          if (v7 != 10)
          {
            goto LABEL_141;
          }

          v48 = (v6 - 1);
          while (2)
          {
            v49 = (v48 + 1);
            v92 = (v48 + 1);
            v50 = *(a1 + 32);
            if (!v50)
            {
LABEL_79:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
              v50 = *(a1 + 32);
              v51 = *v50;
              goto LABEL_80;
            }

            v55 = *(a1 + 24);
            v51 = *v50;
            if (v55 >= *v50)
            {
              if (v51 == *(a1 + 28))
              {
                goto LABEL_79;
              }

LABEL_80:
              *v50 = v51 + 1;
              v52 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(*(a1 + 16));
              v53 = *(a1 + 24);
              v54 = *(a1 + 32) + 8 * v53;
              *(a1 + 24) = v53 + 1;
              *(v54 + 8) = v52;
              v49 = v92;
            }

            else
            {
              *(a1 + 24) = v55 + 1;
              v52 = *&v50[2 * v55 + 2];
            }

            v48 = sub_276808E5C(a3, v52, v49);
            v92 = v48;
            if (!v48)
            {
              return 0;
            }

            if (*a3 <= v48 || *v48 != 10)
            {
              goto LABEL_148;
            }

            continue;
          }
        }

        if (v9 != 3)
        {
          if (v9 != 4 || v7 != 34)
          {
            goto LABEL_141;
          }

          v28 = v6 - 1;
          while (2)
          {
            v29 = (v28 + 1);
            v92 = (v28 + 1);
            v30 = *(a1 + 104);
            if (!v30)
            {
LABEL_49:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 88));
              v30 = *(a1 + 104);
              v31 = *v30;
              goto LABEL_50;
            }

            v36 = *(a1 + 96);
            v31 = *v30;
            if (v36 >= *v30)
            {
              if (v31 == *(a1 + 100))
              {
                goto LABEL_49;
              }

LABEL_50:
              *v30 = v31 + 1;
              v32 = MEMORY[0x277C9BB20](*(a1 + 88));
              LODWORD(v33) = v32;
              v34 = *(a1 + 96);
              v35 = *(a1 + 104) + 8 * v34;
              *(a1 + 96) = v34 + 1;
              *(v35 + 8) = v32;
              v29 = v92;
            }

            else
            {
              *(a1 + 96) = v36 + 1;
              v33 = *&v30[2 * v36 + 2];
            }

            v28 = sub_27680B6EC(a3, v33, v29);
            v92 = v28;
            if (!v28)
            {
              return 0;
            }

            if (*a3 <= v28 || *v28 != 34)
            {
              goto LABEL_148;
            }

            continue;
          }
        }

        if (v7 != 26)
        {
          goto LABEL_141;
        }

        v56 = (v6 - 1);
        while (2)
        {
          v57 = (v56 + 1);
          v92 = (v56 + 1);
          v58 = *(a1 + 80);
          if (!v58)
          {
LABEL_92:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64));
            v58 = *(a1 + 80);
            v59 = *v58;
            goto LABEL_93;
          }

          v63 = *(a1 + 72);
          v59 = *v58;
          if (v63 >= *v58)
          {
            if (v59 == *(a1 + 76))
            {
              goto LABEL_92;
            }

LABEL_93:
            *v58 = v59 + 1;
            v60 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(*(a1 + 64));
            v61 = *(a1 + 72);
            v62 = *(a1 + 80) + 8 * v61;
            *(a1 + 72) = v61 + 1;
            *(v62 + 8) = v60;
            v57 = v92;
          }

          else
          {
            *(a1 + 72) = v63 + 1;
            v60 = *&v58[2 * v63 + 2];
          }

          v56 = sub_2768090CC(a3, v60, v57);
          v92 = v56;
          if (!v56)
          {
            return 0;
          }

          if (*a3 <= v56 || *v56 != 26)
          {
            goto LABEL_148;
          }

          continue;
        }
      }

      if (v7 >> 3 <= 6)
      {
        if (v9 != 5)
        {
          if (v9 != 6 || v7 != 50)
          {
            goto LABEL_141;
          }

          v37 = v6 - 1;
          while (2)
          {
            v38 = (v37 + 1);
            v92 = (v37 + 1);
            v39 = *(a1 + 152);
            if (!v39)
            {
LABEL_64:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136));
              v39 = *(a1 + 152);
              v40 = *v39;
              goto LABEL_65;
            }

            v45 = *(a1 + 144);
            v40 = *v39;
            if (v45 >= *v39)
            {
              if (v40 == *(a1 + 148))
              {
                goto LABEL_64;
              }

LABEL_65:
              *v39 = v40 + 1;
              v41 = MEMORY[0x277C9BB20](*(a1 + 136));
              LODWORD(v42) = v41;
              v43 = *(a1 + 144);
              v44 = *(a1 + 152) + 8 * v43;
              *(a1 + 144) = v43 + 1;
              *(v44 + 8) = v41;
              v38 = v92;
            }

            else
            {
              *(a1 + 144) = v45 + 1;
              v42 = *&v39[2 * v45 + 2];
            }

            v37 = sub_27680B6EC(a3, v42, v38);
            v92 = v37;
            if (!v37)
            {
              return 0;
            }

            if (*a3 <= v37 || *v37 != 50)
            {
              goto LABEL_148;
            }

            continue;
          }
        }

        if (v7 != 42)
        {
          goto LABEL_141;
        }

        v73 = v6 - 1;
        while (2)
        {
          v74 = (v73 + 1);
          v92 = (v73 + 1);
          v75 = *(a1 + 128);
          if (!v75)
          {
LABEL_118:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112));
            v75 = *(a1 + 128);
            v76 = *v75;
            goto LABEL_119;
          }

          v81 = *(a1 + 120);
          v76 = *v75;
          if (v81 >= *v75)
          {
            if (v76 == *(a1 + 124))
            {
              goto LABEL_118;
            }

LABEL_119:
            *v75 = v76 + 1;
            v77 = MEMORY[0x277C9BB20](*(a1 + 112));
            LODWORD(v78) = v77;
            v79 = *(a1 + 120);
            v80 = *(a1 + 128) + 8 * v79;
            *(a1 + 120) = v79 + 1;
            *(v80 + 8) = v77;
            v74 = v92;
          }

          else
          {
            *(a1 + 120) = v81 + 1;
            v78 = *&v75[2 * v81 + 2];
          }

          v73 = sub_27680B6EC(a3, v78, v74);
          v92 = v73;
          if (!v73)
          {
            return 0;
          }

          if (*a3 <= v73 || *v73 != 42)
          {
            goto LABEL_148;
          }

          continue;
        }
      }

      if (v9 == 7)
      {
        if (v7 != 58)
        {
          goto LABEL_141;
        }

        v64 = v6 - 1;
        while (2)
        {
          v65 = (v64 + 1);
          v92 = (v64 + 1);
          v66 = *(a1 + 176);
          if (!v66)
          {
LABEL_105:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 160));
            v66 = *(a1 + 176);
            v67 = *v66;
            goto LABEL_106;
          }

          v72 = *(a1 + 168);
          v67 = *v66;
          if (v72 >= *v66)
          {
            if (v67 == *(a1 + 172))
            {
              goto LABEL_105;
            }

LABEL_106:
            *v66 = v67 + 1;
            v68 = MEMORY[0x277C9BB20](*(a1 + 160));
            LODWORD(v69) = v68;
            v70 = *(a1 + 168);
            v71 = *(a1 + 176) + 8 * v70;
            *(a1 + 168) = v70 + 1;
            *(v71 + 8) = v68;
            v65 = v92;
          }

          else
          {
            *(a1 + 168) = v72 + 1;
            v69 = *&v66[2 * v72 + 2];
          }

          v64 = sub_27680B6EC(a3, v69, v65);
          v92 = v64;
          if (!v64)
          {
            return 0;
          }

          if (*a3 <= v64 || *v64 != 58)
          {
            goto LABEL_148;
          }

          continue;
        }
      }

      if (v9 == 8)
      {
        if (v7 != 66)
        {
          goto LABEL_141;
        }

        v82 = v6 - 1;
        while (2)
        {
          v83 = (v82 + 1);
          v92 = (v82 + 1);
          v84 = *(a1 + 200);
          if (!v84)
          {
LABEL_131:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 184));
            v84 = *(a1 + 200);
            v85 = *v84;
            goto LABEL_132;
          }

          v90 = *(a1 + 192);
          v85 = *v84;
          if (v90 >= *v84)
          {
            if (v85 == *(a1 + 196))
            {
              goto LABEL_131;
            }

LABEL_132:
            *v84 = v85 + 1;
            v86 = MEMORY[0x277C9BB20](*(a1 + 184));
            LODWORD(v87) = v86;
            v88 = *(a1 + 192);
            v89 = *(a1 + 200) + 8 * v88;
            *(a1 + 192) = v88 + 1;
            *(v89 + 8) = v86;
            v83 = v92;
          }

          else
          {
            *(a1 + 192) = v90 + 1;
            v87 = *&v84[2 * v90 + 2];
          }

          v82 = sub_27680B6EC(a3, v87, v83);
          v92 = v82;
          if (!v82)
          {
            return 0;
          }

          if (*a3 <= v82 || *v82 != 66)
          {
            goto LABEL_148;
          }

          continue;
        }
      }

      if (v9 == 9 && v7 == 74)
      {
        v10 = v6 - 1;
        while (1)
        {
          v11 = (v10 + 1);
          v92 = (v10 + 1);
          v12 = *(a1 + 224);
          if (!v12)
          {
            goto LABEL_15;
          }

          v18 = *(a1 + 216);
          v13 = *v12;
          if (v18 < *v12)
          {
            *(a1 + 216) = v18 + 1;
            v15 = *&v12[2 * v18 + 2];
            goto LABEL_19;
          }

          if (v13 == *(a1 + 220))
          {
LABEL_15:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 208));
            v12 = *(a1 + 224);
            v13 = *v12;
          }

          *v12 = v13 + 1;
          v14 = MEMORY[0x277C9BB20](*(a1 + 208));
          LODWORD(v15) = v14;
          v16 = *(a1 + 216);
          v17 = *(a1 + 224) + 8 * v16;
          *(a1 + 216) = v16 + 1;
          *(v17 + 8) = v14;
          v11 = v92;
LABEL_19:
          v10 = sub_27680B6EC(a3, v15, v11);
          v92 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 74)
          {
            goto LABEL_148;
          }
        }
      }

LABEL_141:
      if (v7)
      {
        v91 = (v7 & 7) == 4;
      }

      else
      {
        v91 = 1;
      }

      if (v91)
      {
        *(a3 + 80) = v7 - 1;
        return v92;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v92 = google::protobuf::internal::UnknownFieldParse();
      if (!v92)
      {
        return 0;
      }

LABEL_148:
      if (sub_27670AF08(a3, &v92))
      {
        return v92;
      }
    }

    v6 = (v92 + 2);
LABEL_6:
    v92 = v6;
    goto LABEL_7;
  }

  return v92;
}